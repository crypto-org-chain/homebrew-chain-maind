class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-com/chain-main"
  version "0.7.0-rc1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-com/chain-main/releases/download/v0.7.0-rc1/chain-main_0.7.0-rc1_Darwin_x86_64.tar.gz"
    sha256 "4a0baca2815a76adb039d4fc168a40814ed55b98effc89281b32796858b07fd7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-com/chain-main/releases/download/v0.7.0-rc1/chain-main_0.7.0-rc1_Linux_x86_64.tar.gz"
      sha256 "43eaa8f6b9f75f2ea3d19eb8b2e88292ffac9871e590be33cc9bf974d435e1ab"
    end
  end

  def install
    bin.install "chain-maind"
  end
end