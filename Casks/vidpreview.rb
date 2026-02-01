cask "vidpreview" do
  version "4.1"
  sha256 "261ac4149da1762eaa9e98c2e193da4d3df69abef8ebcecb1ecf50032666166f"

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
