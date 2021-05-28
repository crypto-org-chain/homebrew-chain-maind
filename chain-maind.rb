class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "2.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.0.1/chain-main_2.0.1_Darwin_x86_64.tar.gz"
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.0.1/chain-main_2.0.1_Linux_arm64.tar.gz"
      sha256 "345c7eacfc768df355c3b3ecadc9cc39e3c1656c9c0c4d465b938834fa66ff03"
    else
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.0.1/chain-main_2.0.1_Linux_x86_64.tar.gz"
      sha256 "5e9e9f703cb85c72573086e384e187e752463b2ed0ccd612094a1f29a13f0158"
    end
  end

  def install
    bin.install "bin/chain-maind"
  end
end
