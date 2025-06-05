class Rustbrother < Formula
  desc "Hunt down unused CSS in React components and detect complex patterns"
  homepage "https://github.com/MarkusAugust/RustBrother"
  version "0.1.15"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/MarkusAugust/RustBrother/releases/download/#{version}/rustbrother-aarch64-apple-darwin.tar.gz"
      sha256 "ea50a5fa9626a505a34f5595004673863e3c2199ce341de7adbed58fb8103ebb"
    else
      url "https://github.com/MarkusAugust/RustBrother/releases/download/#{version}/rustbrother-x86_64-apple-darwin.tar.gz"
      sha256 "4d0786041f9e5c4231ac7ea22309981914ab38409716b298afadf53f78901078"
    end
  elsif OS.linux?
    url "https://github.com/MarkusAugust/RustBrother/releases/download/#{version}/rustbrother-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2b8411b158853a787bf206d085aaacf682e0f0557b206496111d5359ba9d9723"
  end

  def install
    bin.install "rustbrother"