class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.0/epack-darwin-arm64"
      sha256 "de9a1e0823375d58d281ba759cadc62d0d269d35befa6af45f3c12209aa94ed0"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.0/epack-darwin-amd64"
      sha256 "76a7ba5c142d6cb6d17d3d8df2448927678fbc21a4e86816e4d884740194e7a2"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.0/epack-linux-arm64"
      sha256 "0b1dde8a43dade9a83c9a15a74f5a9bb4378faae4ecad9a00c487c33e6ea0e34"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.0/epack-linux-amd64"
      sha256 "31c134113bf84369c4f28f8cabfa98171970dc1b70c464d7fcd9556cdcb2c711"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
