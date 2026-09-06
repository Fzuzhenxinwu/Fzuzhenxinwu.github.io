#!/usr/bin/env bash
# Source from the repository root in WSL. All Ruby dependencies stay in this repo.
runtime_root="${AL_FOLIO_RUNTIME_CACHE:-$PWD/vendor}"
export GEM_HOME="$runtime_root/bootstrap"
export GEM_PATH="$GEM_HOME"
export PATH="$GEM_HOME/bin:$PWD/vendor/node/node_modules/.bin:$PATH"
export BUNDLE_PATH="$runtime_root/bundle"
