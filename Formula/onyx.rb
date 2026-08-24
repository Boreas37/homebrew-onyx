class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.5.0/onyx-darwin-arm64.tar.gz"
      sha256 "594e1b4c7e8f9dee58e2f1c3bc21cc8f97c27b48f1edc489f37f243427dd0964"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.5.0/onyx-darwin-amd64.tar.gz"
      sha256 "94d8a3f8e9cb0fa73f1cfaddacc8e47b4d0ffd122ad87ec516011c3fbf3d85c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.5.0/onyx-linux-arm64.tar.gz"
      sha256 "d000cea72917b33e3c189f826f51b23794ddd8f19f96d6152ce933977b633341"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.5.0/onyx-linux-amd64.tar.gz"
      sha256 "6c08ca4d3069c566a90a02e4b897fdb646e8579db4be31cfc983a9ca0f813da4"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
