class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-com/chain-main"
  version "0.7.0-rc0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-com/chain-main/releases/download/v0.7.0-rc0/chain-main_0.7.0-rc0_Darwin_x86_64.tar.gz"
    sha256 "1c03c12c4b2248cfd2287411c2925fdce49edc595d2f26941b7b979ee1b227af"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-com/chain-main/releases/download/v0.7.0-rc0/chain-main_0.7.0-rc0_Linux_x86_64.tar.gz"
      sha256 "f791cf60cbee5fac42a67ce0f98d8db7f20fae126dde33c7341c857ffbb66478"
    end
  end

  def install
    bin.install "chain-maind"
  end
end