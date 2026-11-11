class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.6"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.6/epack-darwin-arm64"
      sha256 "270752bc55463122120b80488807bfe7111cd38140880a7d669f7944eaf01854"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.6/epack-darwin-amd64"
      sha256 "3eb6e484d3cf0876a637cfbb7b2220be78a2bf7eb5ec11bc67ed3b465138312f"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.6/epack-linux-arm64"
      sha256 "6bb1b13acae7e44460acaca1d08275571c115b7ced46a8d7e124cc4001460904"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.6/epack-linux-amd64"
      sha256 "7fb0d4855c9a80a39927ff663ed1a962d818c52640a77d1edc57eb342e902d15"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
