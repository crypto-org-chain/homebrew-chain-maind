class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "1.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.1.0/chain-main_1.1.0_Darwin_x86_64.tar.gz"
    sha256 "4be50fe54c8ad65e789477ff28bb048239fc76f7341c21e5fb019395fff38478"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.1.0/chain-main_1.1.0_Linux_x86_64.tar.gz"
      sha256 "f8a927ca0b5c5ab8a5ba7e38dc1f272533b4d6678ec80b2acd11da7542211496"
    end
  end

  def install
    bin.install "chain-maind"
  end
end