class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.8.1/epack-darwin-arm64"
      sha256 "eef8afb5132edb267bc66f22cbff21e8980e07524d0b27651d020848c3328c59"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.8.1/epack-darwin-amd64"
      sha256 "1cfe5fd3fc77f161659e81ec88883bb7d1bacab91a77635dc4489fd18530d3e9"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.8.1/epack-linux-arm64"
      sha256 "3be58183f427cf99dad65baee5d52ef9541e03217152e9c4f69a1906dc9a1f6e"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.8.1/epack-linux-amd64"
      sha256 "8555c8c27335517a225f0047215f1929c3f59457c46f9856867f33aa6e840a8c"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
