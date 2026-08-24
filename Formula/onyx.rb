class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.7.0/onyx-darwin-arm64.tar.gz"
      sha256 "4725a2d57f6cf4631e46aa34c12af9c16114d45be53af43adaefb011063c343b"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.7.0/onyx-darwin-amd64.tar.gz"
      sha256 "45dd41fe3986cf084c9329abdb23f333495cc0f6f10fec8097e150f579a8d4d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.7.0/onyx-linux-arm64.tar.gz"
      sha256 "484f1141ff025381a26c34e76c1127e6f436d3b97d2f80b674deb8bb6693d64c"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.7.0/onyx-linux-amd64.tar.gz"
      sha256 "c2c0336b1f507779b7337c2d641b8caa1f4730e94cea4aa6aea5d728bf51998f"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
