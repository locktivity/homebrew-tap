class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.1/epack-darwin-arm64"
      sha256 "54ef94a3e6ec020ccdcba5ac999f304e841a0f56d7acbb2d37bf9d6e231e0d00"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.1/epack-darwin-amd64"
      sha256 "e0187e3e54ca507a4aa9e13460892bdbb42f5028a3701f83b41e8a2503ce984c"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.1/epack-linux-arm64"
      sha256 "44523f2d46d3592ee34669470b6ae6a1e4b9f908164e753c901599f8ccebb963"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.1/epack-linux-amd64"
      sha256 "8d15a0125448dde1232b98b2328979a7543dd91929618aef8d4e41f85e634d74"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
