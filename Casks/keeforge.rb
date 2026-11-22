cask "keeforge" do
  version "1.23.0,87"
  sha256 "329dacdc3126dcddd3461a4566dd12a46c4df513b4336bf84f9209f3aa9b2e28"

  url "https://github.com/KeeForge/KeeForge/releases/download/v#{version.csv.first}/KeeForge-#{version.csv.first}-b#{version.csv.second}.zip"
  name "KeeForge"
  desc "KeePass-compatible password manager"
  homepage "https://keeforge.com/"

  livecheck do
    url "https://keeforge.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "KeeForge.app"

  uninstall quit: "com.keevault.app"

  zap trash: [
    "~/Library/Application Scripts/com.keevault.app",
    "~/Library/Application Scripts/com.keevault.app.autofill",
    "~/Library/Application Scripts/group.com.keevault.shared",
    "~/Library/Caches/com.keevault.app.sparkle",
    "~/Library/Containers/com.keevault.app",
    "~/Library/Containers/com.keevault.app.autofill",
    "~/Library/Group Containers/group.com.keevault.shared",
    "~/Library/Preferences/com.keevault.app.plist",
    "~/Library/Preferences/group.com.keevault.shared.plist",
  ]
end
