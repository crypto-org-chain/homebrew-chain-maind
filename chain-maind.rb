class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-com/chain-main"
  version "0.8.0-croeseid"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-com/chain-main/releases/download/v0.8.0-croeseid/chain-main_0.8.0-croeseid_Darwin_x86_64.tar.gz"
    sha256 "d3c7c8923a41c21dcab80295b08cebe4d7b1ed0ff3e48894cfdaca88e7a3380e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-com/chain-main/releases/download/v0.8.0-croeseid/chain-main_0.8.0-croeseid_Linux_x86_64.tar.gz"
      sha256 "36002779f5a7b2a5766079ca5e4736e47ad03d3f39b87bc4fc15e466cf12e4c9"
    end
  end

  def install
    bin.install "chain-maind"
  end
end