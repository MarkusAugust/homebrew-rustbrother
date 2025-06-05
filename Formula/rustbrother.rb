class Rustbrother < Formula
  desc "Hunt down unused CSS in React components and detect complex patterns"
  homepage "https://github.com/MarkusAugust/RustBrother"
  version "0.1.16"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/MarkusAugust/RustBrother/releases/download/#{version}/rustbrother-aarch64-apple-darwin.tar.gz"
      sha256 "b0976b4bdcc53b94bd9c9d8cfbc2c303f2bbee1f58bec1332105387db0c1afa8"
    else
      url "https://github.com/MarkusAugust/RustBrother/releases/download/#{version}/rustbrother-x86_64-apple-darwin.tar.gz"
      sha256 "0abfd9984b2ab7a9106fb4578159e1b7e42b18546ac4cab278760f37c2bac2b6"
    end
  elsif OS.linux?
    url "https://github.com/MarkusAugust/RustBrother/releases/download/#{version}/rustbrother-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eb2ee279931a282cc4c2ae73fdd138d8535d2419abc489d385088f43e85ff1b2"
  end

  def install
    bin.install "rustbrother"
  end

  def test
    system "#{bin}/rustbrother", "--version"
  end
end