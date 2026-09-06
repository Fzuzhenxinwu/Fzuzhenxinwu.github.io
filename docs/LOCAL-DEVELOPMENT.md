# Build, preview, and publish

This personal site uses the official al-folio v1.2 release, with Ruby 3.2.3,
Bundler 4.0.6, Jekyll 4.4.1, and Node 22. Dependencies are locked in
`Gemfile.lock` and `package-lock.json`.

## Build in the existing WSL Ubuntu environment

```bash
cd /mnt/c/Users/wuzhenxin/Desktop/academic-homepage
source bin/local-env.sh
bash bin/build-site.sh
```

The build validates the unique root-site URL configuration, generates `_site`,
and checks local links and assets. Dependencies and output are ignored by Git.

## Preview the generated site

```bash
python3 -m http.server 4000 --bind 0.0.0.0 --directory _site
```

Open http://localhost:4000. Press Ctrl+C to stop the preview server.
Rebuild after changing content. Alternatively, use `bundle exec jekyll serve`
after sourcing `bin/local-env.sh` for automatic rebuilds.

## Publish

The target is https://Fzuzhenxinwu.github.io, with an empty `baseurl`.
GitHub Pages must use **GitHub Actions** as its publishing source.
Push verified changes to `main`; `.github/workflows/deploy.yml` builds the
site and deploys its artifact. Pull requests build without publishing.

```bash
git add .
git commit -m "Update academic homepage"
git push origin main
```

Use the repository's Actions tab to verify the deployment succeeded.
Do not upload `_site`, `vendor`, or `node_modules` to `main`.

## Template adjustments

- Jupyter demo content and the notebook converter dependency were removed.
- Empty blog pagination and unused demo image processing are disabled.
- Sample content and assets are excluded from the published site.
- Upstream maintenance workflows are archived in `docs/upstream-workflows`.
- Personal details remain placeholders until verified information is provided.
