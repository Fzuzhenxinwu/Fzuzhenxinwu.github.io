require "yaml"

source = File.read("_config.yml")
%w[url baseurl].each do |key|
  abort "Expected exactly one #{key}" unless source.scan(/^#{key}:/).length == 1
end
config = YAML.safe_load(source, aliases: true)
{
  "url" => "https://Fzuzhenxinwu.github.io",
  "baseurl" => "",
  "title" => "Zhenxin Wu",
  "first_name" => "Zhenxin",
  "last_name" => "Wu"
}.each do |key, expected|
  abort "Unexpected #{key}: #{config[key].inspect}" unless config[key] == expected
end
puts "Root-site URL and identity configuration verified."
