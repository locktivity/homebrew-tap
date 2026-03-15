class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.26"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.26/epack-darwin-arm64"
      sha256 "3c4022c6da30f90b74250d97ad74a6d673f092f65948ff4ac18562a5565978c0"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.26/epack-darwin-amd64"
      sha256 "54f1264bab6126e04555f3a7f474dd6773c19e2de1ba6e5cc84bcb1d6b5a8791"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.26/epack-linux-arm64"
      sha256 "6465abec8b09c9bd26a1f82b5f4534c79d3297ba5f97d04de9c066a0b7cf0fc9"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.26/epack-linux-amd64"
      sha256 "bc0cf5b759018542c48b2940b367279bca01d5002529d633574ea2dab3279108"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
