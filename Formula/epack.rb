class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.15/epack-darwin-arm64"
      sha256 "e56b39f7b494c31026e81d3ed12d4e869e0683f8ea07cf6ef1507b977c68bdec"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.15/epack-darwin-amd64"
      sha256 "0b7b3eb4cb521d4054fc47c7cbddca70babce321fc8fe7db55f40547d0e5b89f"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.15/epack-linux-arm64"
      sha256 "6ca0933785c43cf767f686f7d58a7f215d50d2cab3eb7c37b36861ac72c437d6"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.15/epack-linux-amd64"
      sha256 "e050c02bae3b3e995082149afdccb3f448b8c6cf99f5c77f9a5823f9f39f6a2d"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
