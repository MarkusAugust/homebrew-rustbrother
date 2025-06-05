class Rustbrother < Formula
  desc "Hunt down unused CSS in React components and detect complex patterns"
  homepage "https://github.com/MarkusAugust/RustBrother"
  version "0.1.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MarkusAugust/RustBrother/releases/download/v#{version}/rustbrother-darwin-arm64.tar.gz"
      sha256 "SHA256_ARM64_PLACEHOLDER"
    else
      url "https://github.com/MarkusAugust/RustBrother/releases/download/v#{version}/rustbrother-darwin-amd64.tar.gz"
      sha256 "SHA256_AMD64_PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/MarkusAugust/RustBrother/releases/download/v#{version}/rustbrother-linux-amd64.tar.gz"
    sha256 "SHA256_LINUX_PLACEHOLDER"
  end

  def install
    bin.install "rustbrother"
  end

  test do
    system "#{bin}/rustbrother", "--version"
  end
end