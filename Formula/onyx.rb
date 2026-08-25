class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.1/onyx-darwin-arm64.tar.gz"
      sha256 "6c67241000e630e18e7fc5ba3dc36e9bf2ba61d20996ae5ea07ad703ac8236c2"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.1/onyx-darwin-amd64.tar.gz"
      sha256 "8f005fe488fbbddc0e8ed68c5fe0d22e6f9a0042878c1d4b075c1bec16e16b45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.1/onyx-linux-arm64.tar.gz"
      sha256 "69d85ef1308ff10cf4987ac427c871f2aa14e0c78a5b3ec9953338083afaf4a5"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.1/onyx-linux-amd64.tar.gz"
      sha256 "08d8198f95b4bdf9ad444656eedc80c23a0061d322d8dd9c6528b63793690704"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
