class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.1/onyx-darwin-arm64.tar.gz"
      sha256 "d55441482979b3e3033c97510fcd8c51d65380c8c35d7f17815dcedf7a0d017a"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.1/onyx-darwin-amd64.tar.gz"
      sha256 "f46b4cd4c68397caf9f7b7e82b79dfafbff1847c352534238e936172c3e9b9b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.1/onyx-linux-arm64.tar.gz"
      sha256 "ba68cb98f81dcd6112a655ef7c97392edb0c9fc1079b844f6190b924b037ab6a"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.3.1/onyx-linux-amd64.tar.gz"
      sha256 "d2064720adcc47efabe83160d3681d98fa601e015f11ceb97cfe53efb2d51557"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
