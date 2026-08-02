cask "kindle-organizer" do
  version "0.4.0"
  sha256 "624bc91fae66843359ee1fb2faa6bbf4444b904c8963a3f14f3b125186ac0cda"

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
