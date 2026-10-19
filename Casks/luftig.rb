cask "luftig" do
  version "1.0.1"
  sha256 "32ba774caf9bac92163f909d758e47d2d9d6b2d21731899ed99fc21079cf6753"

  url "https://github.com/bernorieder/luftig/releases/download/v#{version}/luftig-#{version}.dmg"
  name "luftig"
  desc "Small, fast, native Markdown editor: the source is the document, styled in place"
  homepage "https://github.com/bernorieder/luftig"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "luftig.app"

  zap trash: [
    "~/Library/Application Support/com.bernorieder.luftig",
    "~/Library/Preferences/com.bernorieder.luftig.plist",
    "~/Library/Saved Application State/com.bernorieder.luftig.savedState",
  ]
end
