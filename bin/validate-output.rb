require "nokogiri"
require "uri"

root = File.expand_path("_site")
files = Dir.glob("#{root}/**/*.html")
abort "Missing generated homepage" unless File.file?("#{root}/index.html")
failures = []
files.each do |file|
  doc = Nokogiri::HTML(File.read(file))
  doc.css("[href], [src]").each do |element|
    link = element["href"] || element["src"]
    next if link.nil? || link.empty? || link.start_with?("#", "//")
    next if link.match?(/\A[a-z][a-z0-9+.-]*:/i)
    path = URI::DEFAULT_PARSER.unescape(link.split(/[?#]/).first.to_s)
    next if path.empty?
    target = path.start_with?("/") ? File.join(root, path.delete_prefix("/")) : File.expand_path(path, File.dirname(file))
    target = File.join(target, "index.html") if File.directory?(target)
    failures << "#{file.delete_prefix(root)}: #{link}" unless File.file?(target)
  end
  failures << "Template baseurl remains in #{file}" if File.read(file).match?(/(?:href|src)=["']\/al-folio\//)
end
abort failures.uniq.join("\n") unless failures.empty?
puts "Verified #{files.length} HTML pages and their local links/assets."
