class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.0/onyx-darwin-arm64.tar.gz"
      sha256 "3dc0389d979c42b121f77ff0e7f9b69cef5307d16d6feafdf3feeb9de58fa9c2"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.0/onyx-darwin-amd64.tar.gz"
      sha256 "6462cd0ff42dad336a5caaa794d063532bcafff3a8732a8cc6ad9ad463a31236"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.0/onyx-linux-arm64.tar.gz"
      sha256 "85b4adfd0db339ffa4fe621d1a1292b2c2279964a2ecaba77a4176a6c5256334"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.0.0/onyx-linux-amd64.tar.gz"
      sha256 "75a9310b76a5f82686d178e25d8ed08688304c98b7fadf8aa4621772bd5b6a82"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
