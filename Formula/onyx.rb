class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.1.1/onyx-darwin-arm64.tar.gz"
      sha256 "1036459ac61379ad96ee24cb7599f0f90f19f11638fa911139b354125165adeb"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.1.1/onyx-darwin-amd64.tar.gz"
      sha256 "36c865a64482b8f1a025bc1159d65de1f752255d1143d85a199ae8845bc66df6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.1.1/onyx-linux-arm64.tar.gz"
      sha256 "ca721a0057b9cc6640ff4217c0710e0a6cd4949e8ada2188cb8582e85bf6c968"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.1.1/onyx-linux-amd64.tar.gz"
      sha256 "6b51aafa79ed84661081881f36ce436cdd184ecc2d1123a7ef0c912747c50428"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
