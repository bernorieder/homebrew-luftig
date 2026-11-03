cask "luftig" do
  version "1.0.8"
  sha256 "d9b98ddc3cd2e44354057497713cea670ff162e2158f337a6593e8ef22267d1c"

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
