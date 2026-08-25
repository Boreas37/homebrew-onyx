class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.2/onyx-darwin-arm64.tar.gz"
      sha256 "1b4222aa12d2a39bb570e187a8b53b63746d2636b86bd91e51a086f951db760f"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.2/onyx-darwin-amd64.tar.gz"
      sha256 "227266997cdf9177375302f25301624768301f515e649238d2ec7c157c478da6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.2/onyx-linux-arm64.tar.gz"
      sha256 "df13896c04b3c66c24d11712ade7f6fedeca4db0c013c2bf2ec4912e5024b23e"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.2/onyx-linux-amd64.tar.gz"
      sha256 "3f5ce120f1a0dae57a391712a8ab4d0a88d4e3f9e1bff4800342dae874967f58"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
