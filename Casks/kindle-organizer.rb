cask "kindle-organizer" do
  version "0.5.0"
  sha256 "29475187f03b0d8079898da0976f7e390a35b1d02e3574d872d552ae1215b5c7"

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
