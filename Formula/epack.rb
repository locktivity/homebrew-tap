class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-darwin-arm64"
      sha256 "f5e9572fdbb95bc945505b5e2799ae9db29a3f4b1742b3d21104f0fc596f41ce"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-darwin-amd64"
      sha256 "b47763f716af46914c08bf6a18d1765587b4c8db9dda3f03be54b16600807926"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-linux-arm64"
      sha256 "f07c016bda3a3b445acdf66dfe36417bcdcfb485936b404207c193d4700301a1"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-linux-amd64"
      sha256 "19479e42c3dc7d727a4f91f3cbd9fac1d36f5c66c100984df9e73749ad6dd7dd"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
