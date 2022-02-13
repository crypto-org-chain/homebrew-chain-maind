class ChainMaindAT212 < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "2.1.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.1.2/chain-main_2.1.2_Darwin_arm64.tar.gz"
      sha256 "1eda83ec0cae979a66a4057f8ac85c9d8ed3de3c3f65519c400451732e679b5f"
    elsif Hardware::CPU.intel?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.1.2/chain-main_2.1.2_Darwin_x86_64.tar.gz"
      sha256 "f01663ea68a9de70f35d3abbeb58a260fc1f7df42aa0963ee33832c3f211f6e3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.1.2/chain-main_2.1.2_Linux_arm64.tar.gz"
      sha256 "e9a5199b3f9ad3c224d3764de7be41bc06f0cb83335923e599891e306b3a3f1b"
    else
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v2.1.2/chain-main_2.1.2_Linux_x86_64.tar.gz"
      sha256 "8efb2ca17d04929fa37a9bf4b021981819c28af9039755813e4225ed04d43832"
    end
  end

  def install
    bin.install "bin/chain-maind"
  end
end
