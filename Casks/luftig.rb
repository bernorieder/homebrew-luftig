cask "luftig" do
  version "1.0.6"
  sha256 "1baf56878d24b0baa8e2f562cc59a1f261923fc6ba7a514d2fecddb9283b66ea"

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
