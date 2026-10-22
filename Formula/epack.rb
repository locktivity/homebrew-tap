class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.5"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.5/epack-darwin-arm64"
      sha256 "c537ecb71ae2bbf714febb71fb0e4fb40eec9b550c95b12373b3ee906709a9d3"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.5/epack-darwin-amd64"
      sha256 "b54237d51932e103ec3e7384d5e8b848f5d985cfd3d9de3ca1247d890f21f9af"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.5/epack-linux-arm64"
      sha256 "1f30ce4cd4d99cfd8bb7cac779d77f0b64c8a50540195b58b37c074b2a50c2c6"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.5/epack-linux-amd64"
      sha256 "63a02e7d530b01d44913cefd0295fe107988fbe2cc0100c91978c28bf256ed90"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
