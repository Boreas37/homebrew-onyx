class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.8.0/onyx-darwin-arm64.tar.gz"
      sha256 "8c6c57ff05e7b21e9249c7ec9562ef1c1ef04b5940a36d6a9791f8e9daf90cb2"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.8.0/onyx-darwin-amd64.tar.gz"
      sha256 "2ad952c7ab6cdc06a422b3d05283707a3aab73dbf3b8eb228013c507db21af32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.8.0/onyx-linux-arm64.tar.gz"
      sha256 "a42dece64af2100cd704ed25b78d52cad47d70dd45167d971cb7510f94b20684"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.8.0/onyx-linux-amd64.tar.gz"
      sha256 "30445177d6b65cb55b0045a0ac936f98d38f9590d5e258d97f8a25d3206f238b"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
