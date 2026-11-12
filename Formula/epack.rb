class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.1/epack-darwin-arm64"
      sha256 "b2320a494341edf51c749ddfa06537fb9af1fce0d10a36d47d7b2d6b98195e43"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.1/epack-darwin-amd64"
      sha256 "858ea401f8cb4b8ce34befda09a35db253d5cfa5606e5be634d671cd00e36a5a"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.1/epack-linux-arm64"
      sha256 "79b6b8327b550bf8369278796171ea2081afc90738d6948223af91f6aced0071"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.1/epack-linux-amd64"
      sha256 "d16ee3403cd63c044feb524d8975d173ce8a3f1ce9f6ca61a33adc926220777e"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
