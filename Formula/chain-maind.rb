class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "3.1.1"
  bottle :unneeded

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v3.1.1/chain-main_3.1.1_Darwin_arm64.tar.gz"
      sha256 "3ebdeeb65400332e6c892a52cc6241ed6f4a43949114cf19a9648f56a212f471"
    elsif Hardware::CPU.intel?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v3.1.1/chain-main_3.1.1_Darwin_x86_64.tar.gz"
      sha256 "082539ce9e9f2e382a70003a8504c9aa95f16fee55d104d3d94090b01e36ee63"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v3.1.1/chain-main_3.1.1_Linux_arm64.tar.gz"
      sha256 "728940e53a9706d286480f55d6f033f8345b82e3788710490aac8cd79b44bdcd"
    else
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v3.1.1/chain-main_3.1.1_Linux_x86_64.tar.gz"
      sha256 "043793233827cb948714d8d9f0196a4d574195c90d7e8ac85c06220fdec39df2"
    end
  end

  def install
    bin.install "bin/chain-maind"
  end
end
