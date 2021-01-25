class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-com/chain-main"
  version "0.8.1-croeseid"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-com/chain-main/releases/download/v0.8.1-croeseid/chain-main_0.8.1-croeseid_Darwin_x86_64.tar.gz"
    sha256 "5ecbb953361a91cc34ca9d6a64f38ad4959f2e507a6d4d1fc7a4f5bcca97e906"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-com/chain-main/releases/download/v0.8.1-croeseid/chain-main_0.8.1-croeseid_Linux_x86_64.tar.gz"
      sha256 "49bb6ded4f2454af63b698451a4f445739ebafa035da8d39abffc2595b0255de"
    end
  end

  def install
    bin.install "chain-maind"
  end
end