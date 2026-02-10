cask "vidpreview" do
  version "5.0"

  on_arm do
    sha256 "4e20908f96ced37ef8dc2144549bc8ef6dc46e8dc998a7e0e2f5d400ceb946c3"
    url "https://github.com/ptaru/VidPreview/releases/download/#{version}/VidPreview_arm64.zip"
  end
  on_intel do
    sha256 "3a67210f2882fd83dc3ee7e28bdd5b375ecdc8c324c777a92ee502e8c4970813"
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
