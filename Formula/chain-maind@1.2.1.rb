class ChainMaindAT121 < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "1.2.1"

  if OS.mac?
    url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.2.1/chain-main_1.2.1_Darwin_x86_64.tar.gz"
    sha256 "4004c08609598b63c14e1611c174fa55c1425374a0d923b7a4a34d4792101fb8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.2.1/chain-main_1.2.1_Linux_x86_64.tar.gz"
      sha256 "25a5f249e0c4764cc44353d35cd783c71ec1b0e133415ed0a845a83eb012bac4"
    end
  end

  def install
    bin.install "bin/chain-maind"
  end
end
