class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.0/onyx-darwin-arm64.tar.gz"
      sha256 "0884a3847bb60687b2886a0c6ce1377bc9202377f7cdba0af66de103511968ff"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.0/onyx-darwin-amd64.tar.gz"
      sha256 "d9f8dc3da324aaf308a20da484ccab91136974f17c5a220876427662f7c2535f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.0/onyx-linux-arm64.tar.gz"
      sha256 "a0ebf4b6754e78f957bcfd6f2234931819449aaeca93aeddbc722f7cfa164819"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.0/onyx-linux-amd64.tar.gz"
      sha256 "70a8f9c22f002106c942b138872625356523eb4fa0c5b95e9072c50c244f5963"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
