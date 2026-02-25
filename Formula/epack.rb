class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.8/epack-darwin-arm64"
      sha256 "6df15449d76d43e55061f8bd022f93abfd7e43bf16b674848b6a297db0da8be1"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.8/epack-darwin-amd64"
      sha256 "9a5c8af544e311f4cbef29798e0fd9aa2810d3af006263b6bfc76aef9a43ac7e"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.8/epack-linux-arm64"
      sha256 "afb584fb74b99cc61abca59a2a59bed16c0e6ea986cc9cddff587eb4eb3fb1b1"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.8/epack-linux-amd64"
      sha256 "a16b29574bd799f95a8e0bba330798bcc70c7d033ddac61a9c7897334ef874e9"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
