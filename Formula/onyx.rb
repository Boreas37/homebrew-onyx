class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.1/onyx-darwin-arm64.tar.gz"
      sha256 "6054c72a8f31e50b949e5ed1e6860534cd3769d88a7072045280cb15569acb81"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.1/onyx-darwin-amd64.tar.gz"
      sha256 "eaf98fa44c7f744c9847f5ed70c67000e27f0d839cc87fa264f13bfef7984c70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.1/onyx-linux-arm64.tar.gz"
      sha256 "256afd6ab6516bf26227bd567443d4917fef30f0c992151dce0c5e172829e37b"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.1/onyx-linux-amd64.tar.gz"
      sha256 "beee170ae439e1a12e70c4d36899c13048d8ea3c5276869803b74d0112dd559f"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
