class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.1.0/onyx-darwin-arm64.tar.gz"
      sha256 "63c7674e7bd4a3edcf2a6f71355ef07678a5ccbbb926d7396b93a2334efd865e"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.1.0/onyx-darwin-amd64.tar.gz"
      sha256 "1ed56d4d78091887b85af06def3b022cda09fd914e405602eaa51612cb6c67ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v1.1.0/onyx-linux-arm64.tar.gz"
      sha256 "e1a2a9d7ad064c2f17a53d710b385035306415d7bfcaa7b686b75ee07e1d07c6"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v1.1.0/onyx-linux-amd64.tar.gz"
      sha256 "bd815453d723ea1f9186e320979965fbc6dc07e7c22db1f9fa6939e09c3b0698"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
