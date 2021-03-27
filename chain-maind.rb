class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "1.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.2.0/chain-main_1.2.0_Darwin_x86_64.tar.gz"
    sha256 "67e578899f3b3ced2782b7c84b816d5b0de6856a557889c56aad215356354373"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.2.0/chain-main_1.2.0_Linux_x86_64.tar.gz"
      sha256 "5cefa69a888a25db4f8ba48271a64323d2c1ca64f53a75f65b596f793c2d5157"
    end
  end

  def install
    bin.install "bin/chain-maind"
  end
end