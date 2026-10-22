cask "luftig" do
  version "1.0.4"
  sha256 "95f85b34873dff020f22ec35004b5f41615f5ab922af62ea65a515acca8d0666"

  url "https://github.com/bernorieder/luftig/releases/download/v#{version}/luftig-#{version}.dmg"
  name "luftig"
  desc "Small, fast, native Markdown editor: the source is the document, styled in place"
  homepage "https://github.com/bernorieder/luftig"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "luftig.app"

  zap trash: [
    "~/Library/Application Support/com.bernorieder.luftig",
    "~/Library/Preferences/com.bernorieder.luftig.plist",
    "~/Library/Saved Application State/com.bernorieder.luftig.savedState",
  ]
end
