class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.1/epack-darwin-arm64"
      sha256 "b2ad47799c44bdfad9c6de5ee1c942e92bebd004f9efe587cfa5579d64955035"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.1/epack-darwin-amd64"
      sha256 "034b989ae5f3986fb12d94a65f0006c183e82010f28dc34fa713973821512242"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.1/epack-linux-arm64"
      sha256 "69f186b9b11bff80239814a8de36c7a30c065cef3762f788f20e446468510bba"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.1/epack-linux-amd64"
      sha256 "70b4636ca2b4570af3756714446ff1d9884cb4448cf98a961283e0e33303fabe"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
