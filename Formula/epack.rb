class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.1/epack-darwin-arm64"
      sha256 "39233fc36532ff3d22ab90635e613aeeb06456a83d299e91f0650a558b47881b"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.1/epack-darwin-amd64"
      sha256 "6517255627a6d5ad1a96695c64501f3a7218d75dba187c6c8306bd1a8d4a765e"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.1/epack-linux-arm64"
      sha256 "fdf1e2097e0ce5ae94298c270929c88c95f63c473164bdc5c1176dfc554a2739"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.1/epack-linux-amd64"
      sha256 "930c39c1321d15b0eb77db4cf7e47578530d9f4ced97b69d77a40f94856e3498"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
