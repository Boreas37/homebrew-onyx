class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.9.0/onyx-darwin-arm64.tar.gz"
      sha256 "163af017f86e1363b32108a3d16b4b80bb2601060170ad9d6c8808a5dce06a47"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.9.0/onyx-darwin-amd64.tar.gz"
      sha256 "13e020ebe5f3253dce07ffc0fa0359282b98fbddebc5fc467d9a94c47b81dfc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.9.0/onyx-linux-arm64.tar.gz"
      sha256 "1b48db63945bf90aa70c728af7bea6ee72af33027563a61819a0b58e6f5a5d8e"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.9.0/onyx-linux-amd64.tar.gz"
      sha256 "31a51b4610f889a005f88ad4ab90ea1e5576099df110668dbd9b3390a04dea2e"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
