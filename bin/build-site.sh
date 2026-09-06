#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
export JEKYLL_ENV=production
bundle exec ruby bin/validate-site.rb
bundle exec jekyll build --trace
bundle exec ruby bin/validate-output.rb
