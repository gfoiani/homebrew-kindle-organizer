cask "kindle-organizer" do
  version "0.2.0"
  sha256 "3ecd41a7314f6e6361975ecfcfec96a35539dd26d84c2c965a062c0926c716a2"

  url "https://github.com/gfoiani/kindle-organizer/releases/download/v#{version}/Kindle-Organizer-#{version}-universal.dmg"
  name "Kindle Organizer"
  desc "Manage and organize your Kindle library"
  homepage "https://github.com/gfoiani/kindle-organizer"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kindle Organizer.app"

  zap trash: [
    "~/Library/Application Support/kindle-manager",
    "~/Library/Preferences/com.kindleorganizer.app.plist",
    "~/Library/Caches/com.kindleorganizer.app",
  ]
end
