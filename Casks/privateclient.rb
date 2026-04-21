cask "privateclient" do
  version "1.0b4"
  sha256 "c0f600b61d35cc3ddca203416a8e92beed85f024de84811847cb1e7b36af6e7c"

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
