class ChainMaindAT122 < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "1.2.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.2.2/chain-main_1.2.2_Darwin_arm64.tar.gz"
      sha256 "2370643e83a75bacd017d75b838d8b4facb3a87f384e6d50a3bf65416dfb49f6"
    elsif Hardware::CPU.intel?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.2.2/chain-main_1.2.2_Darwin_x86_64.tar.gz"
      sha256 "c18a9a4160a036a4867a435731dedc724c8bd18b076afff1539f9f25fd9b7525"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.2.2/chain-main_1.2.2_Linux_arm64.tar.gz"
      sha256 "d384e1c82a3369a89d681e0b4e742efc22bda44971907ee4264d292401f50866"
    else
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v1.2.2/chain-main_1.2.2_Linux_x86_64.tar.gz"
      sha256 "24c28970506d00b20cc16a991c485c316374adce5119c79f09ce43ae3aa49bb6"
    end
  end

  def install
    bin.install "bin/chain-maind"
  end
end
