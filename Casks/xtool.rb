cask "xtool" do
  version :latest
  sha256 :no_check

  url "https://github.com/xtool-org/xtool/releases/latest/download/xtool.app.zip"
  name "xtool"
  desc "Cross-platform Xcode replacement"
  homepage "https://github.com/xtool-org/xtool"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "xtool.app"
  binary "#{appdir}/xtool.app/Contents/Resources/bin/xtool"

  zap trash: [
    "~/.config/xtool/",
  ]
end
