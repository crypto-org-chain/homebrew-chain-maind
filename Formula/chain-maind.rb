class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "2.1.1"
  bottle :unneeded

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.1.1/chain-main_2.1.1_Darwin_arm64.tar.gz"
      sha256 "3579f722dc3f8fb500f07171ade240c3916f73ed16bcfb2f76defef6bf952b45"
    elsif Hardware::CPU.intel?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.1.1/chain-main_2.1.1_Darwin_x86_64.tar.gz"
      sha256 "389de09548ffcd5cb55845c57e925537f60015bf3eb45f0c4d80b305c33049ee"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.1.1/chain-main_2.1.1_Linux_arm64.tar.gz"
      sha256 "2e57ae0794e7cf7dc161b4a9c823ef6209247392540ef7114449f338e23ac57d"
    else
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.1.1/chain-main_2.1.1_Linux_x86_64.tar.gz"
      sha256 "92b4035512bbcceaa8913461e6f41418379aee05670af5179f20928e26b3bced"
    end
  end

  def install
    bin.install "bin/chain-maind"
  end
end
