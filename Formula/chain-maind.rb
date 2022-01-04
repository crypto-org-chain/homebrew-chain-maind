class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "3.3.2"
  bottle :unneeded

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v3.3.2/chain-main_3.3.2_Darwin_arm64.tar.gz"
      sha256 "d44461b1f3d24d95c1c2d5843b9b7a933de138c2f1dd69b4e847da2c3e4ed905"
    elsif Hardware::CPU.intel?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v3.3.2/chain-main_3.3.2_Darwin_x86_64.tar.gz"
      sha256 "98061836b57fe7b3631f94287bb79ffab11647e946d513bb35d3b5f81946d084"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v3.3.2/chain-main_3.3.2_Linux_arm64.tar.gz"
      sha256 "a648b612c46d7f2c8490d3778067250ee2f75e0d4d338ac3cd1bc49fe4dcbe6f"
    else
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v3.3.2/chain-main_3.3.2_Linux_x86_64.tar.gz"
      sha256 "96032aeab7084ca06d5f1842144102a5219ac8b3b4fddbf474eba03265669ef2"
    end
  end

  def install
    bin.install "bin/chain-maind"
  end
end
