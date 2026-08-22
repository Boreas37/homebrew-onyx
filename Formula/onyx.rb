class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v#{version}/onyx-darwin-arm64.tar.gz"
      sha256 "ARM64_DARWIN_SHA256"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v#{version}/onyx-darwin-amd64.tar.gz"
      sha256 "AMD64_DARWIN_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v#{version}/onyx-linux-arm64.tar.gz"
      sha256 "ARM64_LINUX_SHA256"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v#{version}/onyx-linux-amd64.tar.gz"
      sha256 "AMD64_LINUX_SHA256"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
