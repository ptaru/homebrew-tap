cask "privateclient" do
  version "1.0"
  sha256 "fbd4420ddf26d509e96aca97e882f42a4df71a87f01639745224bc2d3a94bc5d"

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
