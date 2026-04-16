cask "privateclient" do
  version "1.0b2"
  sha256 "d7341942c7a57e199284c001bd163756dce476b891161a5874b767421c90cd1b"

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
