cask "vidpreview" do
  version "3.0"
  sha256 "0dc9eedacd2c82bb8cbff9af96f8c036db71d18cc7ac1972d95f3ec9f7b41001"

  url "https://github.com/ptaru/VidPreview/releases/download/#{version}/VidPreview.zip"
  name "VidPreview"
  desc "QuickLook extension for native video preview"
  homepage "https://github.com/ptaru/VidPreview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "VidPreview.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/VidPreview.app"]
  end
end
