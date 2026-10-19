cask "luftig" do
  version "1.0.2"
  sha256 "95bd98fa57867afd3f9514793f0887b3c42af9c474a8b7aaf8290d0d5d42e9c4"

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
