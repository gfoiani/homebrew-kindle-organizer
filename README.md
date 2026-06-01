# Homebrew Cask: Kindle Organizer

This directory contains a [Homebrew Cask](https://docs.brew.sh/Cask-Cookbook) formula for installing Kindle Organizer on macOS.

## For users

```bash
# Add the tap
brew tap gfoiani/kindle-organizer

# Install
brew install --cask kindle-organizer
```

## For maintainers

This repository **is** the tap that `brew` installs from. After each app release,
bump `version` and `sha256` in `Casks/kindle-organizer.rb`.

The SHA-256 must be computed from the **DMG attached to the GitHub Release**
(built by CI) — not from a local build, whose bytes differ and would fail
`brew`'s integrity check.

```bash
# 1. Download the released DMG from the GitHub Release, e.g.
curl -L -o /tmp/ko.dmg \
  https://github.com/gfoiani/kindle-organizer/releases/download/v0.1.2/Kindle.Organizer-0.1.2-universal.dmg

# 2. From the app repo, let the script update this cask (HOMEBREW_DIR points here):
#    cd ../app && yarn update-homebrew /tmp/ko.dmg
#    (or update version + sha256 below by hand)
shasum -a 256 /tmp/ko.dmg
```

Then commit and push **this** repository. The full release flow lives in the app
repo's README under "Releasing & publishing to Homebrew".
