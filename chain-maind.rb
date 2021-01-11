class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-com/chain-main"
  version "0.8.0-croeseid"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-com/chain-main/releases/download/v0.8.0-croeseid/chain-main_0.8.0-croeseid_Darwin_x86_64.tar.gz"
    sha256 "c4fbd45af7d82eb632d950510619313c5f80c2e42c387759ab990058cd75d4e8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-com/chain-main/releases/download/v0.8.0-croeseid/chain-main_0.8.0-croeseid_Linux_x86_64.tar.gz"
      sha256 "cc24bc7eb99e80371c5b14ac154ed303368e4be83d5d040e7812ee1e451afee2"
    end
  end

  def install
    bin.install "chain-maind"
  end
end