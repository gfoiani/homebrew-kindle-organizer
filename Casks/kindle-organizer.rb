cask "kindle-organizer" do
  version "0.3.0"
  sha256 "b85fd46dcac520f658cf1af672355a258ab7e64b38c741cfd4824b39aec24f40"

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
