class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.18"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.18/epack-darwin-arm64"
      sha256 "930f9f3bc6dfa41662fa61c09b489d007b8da0c77dd4a226108ebc763b71f2d2"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.18/epack-darwin-amd64"
      sha256 "cc9e6232a4c44e8e6486428752fca641f61b0a036311f256ceade2f3bc2c0227"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.18/epack-linux-arm64"
      sha256 "625b91b52e965d3897885427b12a8ab9e65ae4f85d4b232e8088fcc2e044afc6"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.18/epack-linux-amd64"
      sha256 "778bb6794bb5b7feb53d5b5504428b18b19593306c162d0c625aabf85861913e"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
