class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-com/chain-main"
  version "0.8.0-rc1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-com/chain-main/releases/download/v0.8.0-rc1/chain-main_0.8.0-rc1_Darwin_x86_64.tar.gz"
    sha256 "c8ae69c360765f72a160b5557cbdf6968d47266bdc9ef752b191f06a5af810db"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-com/chain-main/releases/download/v0.8.0-rc1/chain-main_0.8.0-rc1_Linux_x86_64.tar.gz"
      sha256 "042f3d6eb7ff3bc20a808d0f56bf2e3b132c3ba201e0565a00a89028d08b4be3"
    end
  end

  def install
    bin.install "chain-maind"
  end
end