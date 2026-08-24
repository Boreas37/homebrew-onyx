class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.4.0/onyx-darwin-arm64.tar.gz"
      sha256 "ce7560f62ddc1ce4610c473aca0d3fb76f5077ef7b60a3514f1e9bc3468ec85e"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.4.0/onyx-darwin-amd64.tar.gz"
      sha256 "e4d8f32a4e4e903d4db781da763935aa98cb0679599d8813360986610668b177"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.4.0/onyx-linux-arm64.tar.gz"
      sha256 "fe3769ea29d689ac8d198ee98b54d202b755e60f7a2bf8c5f2a8cde10c990f13"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.4.0/onyx-linux-amd64.tar.gz"
      sha256 "dbd757165ddc6a1a744c0f13adb103fb914ee8ad7c62adbee2c315f0433a6853"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
