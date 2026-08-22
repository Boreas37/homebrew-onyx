class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v#{version}/onyx-darwin-arm64.tar.gz"
      sha256 "4d0753a5e7702fe376da078fd3511531838ea5960d54f8ff52bb1306963a13f2"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v#{version}/onyx-darwin-amd64.tar.gz"
      sha256 "2cb4c899d27855ea48eaf66670b9098d925906f3509680cefe397634c775a1e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v#{version}/onyx-linux-arm64.tar.gz"
      sha256 "a7267232b7af680b920bc966e0ddfd2b89a975c4cb221fe61ff01acc7ab7db9d"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v#{version}/onyx-linux-amd64.tar.gz"
      sha256 "046dff28ccceeeafae4b4898b89ba43be4e4a358f3ffd12e13cdcb51315c8afd"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
