# Homebrew Cask: Kindle Organizer

This directory contains a [Homebrew Cask](https://docs.brew.sh/Cask-Cookbook) formula for installing Kindle Organizer on macOS.

## For users

```bash
# Add the tap
brew tap gfoiani/kindle-organizer

# Trust it — Homebrew 6 refuses to load casks from untrusted third-party taps
brew trust --tap gfoiani/kindle-organizer

# Install
brew install --cask kindle-organizer
```

Trusting just this cask works too:
`brew trust --cask gfoiani/kindle-organizer/kindle-organizer`. Either way the choice is
recorded in `~/.homebrew/trust.json` and is a one-time step (upgrades included).

## For maintainers

This repository **is** the tap that `brew` installs from. After each app release,
bump `version` and `sha256` in `Casks/kindle-organizer.rb`.

The SHA-256 must be computed from the **DMG attached to the GitHub Release**
(built by CI) — not from a local build, whose bytes differ and would fail
`brew`'s integrity check.

```bash
# 1. Download the released DMG from the GitHub Release, e.g.
curl -L -o /tmp/ko.dmg \
  https://github.com/gfoiani/kindle-organizer/releases/download/v0.2.0/Kindle-Organizer-0.2.0-universal.dmg

# 2. From the app repo, let the script update this cask (HOMEBREW_DIR points here):
#    cd ../app && yarn update-homebrew /tmp/ko.dmg
#    (or update version + sha256 below by hand)
shasum -a 256 /tmp/ko.dmg
```

Then commit and push **this** repository. The full release flow lives in the app
repo's README under "Releasing & publishing to Homebrew".
