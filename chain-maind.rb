class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-org-chain/chain-main"
  version "0.9.1-croeseid"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-org-chain/chain-main/releases/download/v0.9.1-croeseid/chain-main_0.9.1-croeseid_Darwin_x86_64.tar.gz"
    sha256 "e19bf16919ddb06ba6df31dbd0a42c13cc30be8f70d6a3821bd2de17db6a28ad"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-org-chain/chain-main/releases/download/v0.9.1-croeseid/chain-main_0.9.1-croeseid_Linux_x86_64.tar.gz"
      sha256 "c13ee1e2a1eff05da7df1481a64ee2b8a54251cd6ecd5d139e3b1bf499f24c8e"
    end
  end

  def install
    bin.install "chain-maind"
  end
end