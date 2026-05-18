class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.32"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.32/epack-darwin-arm64"
      sha256 "62b6c2a75daac003c0b0c5b7665d6676261b130156e2619f7bf3caeca125819e"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.32/epack-darwin-amd64"
      sha256 "de19660ec4255f445270ec894f6bf739a9b075ec1352322c6322e4f30e471286"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.32/epack-linux-arm64"
      sha256 "1da80e3f8e9ee25e8c7ce01d8d78555bc7bd6ca90c0f3074ce08358cd2659690"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.32/epack-linux-amd64"
      sha256 "3bb145859dacdc340e6f5c255da21f0754e48235a4fc23b4012939191509f92d"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
