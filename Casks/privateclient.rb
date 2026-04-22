cask "privateclient" do
  version "1.0b4"
  sha256 "c2e2507dffb77288895bd0f3a097bd3733cd387e9a9227d14e80e42fe72f7f32"

  url "https://github.com/ptaru/PrivateClient/releases/download/#{version}/PrivateClient-Release.zip"
  name "PrivateClient"
  desc "Unofficial client for Private Internet Access"
  homepage "https://github.com/ptaru/PrivateClient"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "PrivateClient.app"
end
