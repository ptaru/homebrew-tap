cask "vidpreview" do
  version "5.1"

  on_arm do
    sha256 "f429f63013dac645dc0777cfc76799a2c6f19366ea875a39afded0823c5c24a2"

    url "https://github.com/ptaru/VidPreview/releases/download/#{version}/VidPreview_arm64.zip"
  end
  on_intel do
    sha256 "6e2a007a8f85b3abd524553f5d05b06869588cb1a6e413bbe51b787f87dbf8be"

    url "https://github.com/ptaru/VidPreview/releases/download/#{version}/VidPreview_universal.zip"
  end

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
