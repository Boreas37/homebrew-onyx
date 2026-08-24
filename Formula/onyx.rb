class Onyx < Formula
  desc "Local-first WordPress vulnerability scanner"
  homepage "https://github.com/Boreas37/onyx"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.6.0/onyx-darwin-arm64.tar.gz"
      sha256 "d251ce606c62112b9166f8b8964c59275d3aa8af0973ee4230e3a1fb71a67948"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.6.0/onyx-darwin-amd64.tar.gz"
      sha256 "6719e0556b6ed0ffe0c4b45886a5564aa00d3ae0cafef9f50be59e0e929ba21b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Boreas37/onyx/releases/download/v0.6.0/onyx-linux-arm64.tar.gz"
      sha256 "2ada93fbf53e713441b8d9138292037ee98b25cd80974bcb023cbf9f1e42cbb1"
    else
      url "https://github.com/Boreas37/onyx/releases/download/v0.6.0/onyx-linux-amd64.tar.gz"
      sha256 "2c51eea98b7faa3dba7b94036fdd87b18763ef49360fe7c23af178585edcec9d"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onyx version")
  end
end
