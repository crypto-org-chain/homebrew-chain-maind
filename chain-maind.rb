class ChainMaind < Formula
  desc "chain-main daemon"
  homepage "https://github.com/crypto-com/chain-main"
  version "0.7.0-rc2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/crypto-com/chain-main/releases/download/v0.7.0-rc2/chain-main_0.7.0-rc2_Darwin_x86_64.tar.gz"
    sha256 "6f7c7a3d05e78e974ae59acf88e101160b90b6a5a087e8958b281c6e8c76a733"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/crypto-com/chain-main/releases/download/v0.7.0-rc2/chain-main_0.7.0-rc2_Linux_x86_64.tar.gz"
      sha256 "a099d0788743dc7568eb6319ff534bc308a82ee990b8b35ed1b97b43c10aa9b4"
    end
  end

  def install
    bin.install "chain-maind"
  end
end