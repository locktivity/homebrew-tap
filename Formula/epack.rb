class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.6.0/epack-darwin-arm64"
      sha256 "6c9a2bdb3421d16b38e7ae490f0a00b9aa4f800ed38560b894ee0e03deb0ba04"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.6.0/epack-darwin-amd64"
      sha256 "76752ce567fe34525c904330658480b6f2ff8f74d410ddd242c9f265def97a2f"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.6.0/epack-linux-arm64"
      sha256 "a48264dabe49cffe208a3904b3c41507ce300045540e4eae82115307656786c1"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.6.0/epack-linux-amd64"
      sha256 "95c3f7a8d56408986d3203d254e8f8d67b4eee2a740d42fd9c4064776d58030d"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
