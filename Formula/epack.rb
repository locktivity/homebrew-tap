class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.1/epack-darwin-arm64"
      sha256 "9751729aef96198151d0ca087f1345f271cdfcb86b960f4eaefb2a9947ddc14c"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.1/epack-darwin-amd64"
      sha256 "afa6d8b93c696fe6309c259ba69a5a3ac994858f823bc0df891d8e86498627bd"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.1/epack-linux-arm64"
      sha256 "08b590080af46026b7e253a2db0b969d461fa8f23bd0571f94b5d548d388ebea"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.1/epack-linux-amd64"
      sha256 "b3de9ac6451854ee48c1a2a3c7e0ddf62c8448899c63c1bebf4826ea1312ef11"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
