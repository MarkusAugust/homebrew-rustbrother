class Rustbrother < Formula
  desc "Hunt down unused CSS in React components and detect complex patterns"
  homepage "https://github.com/MarkusAugust/RustBrother"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/MarkusAugust/RustBrother/releases/download/v#{version}/rustbrother-darwin-arm64.tar.gz"
      sha256 "PUT_DARWIN_ARM64_SHA256_HERE"
    else
      url "https://github.com/MarkusAugust/RustBrother/releases/download/v#{version}/rustbrother-darwin-amd64.tar.gz"
      sha256 "PUT_DARWIN_AMD64_SHA256_HERE"
    end
  elsif OS.linux?
    url "https://github.com/MarkusAugust/RustBrother/releases/download/v#{version}/rustbrother-linux-amd64.tar.gz"
    sha256 "PUT_LINUX_AMD64_SHA256_HERE"
  end

  def install
    bin.install "rustbrother"
  end

  test do
    system "#{bin}/rustbrother", "--version"
  end
end