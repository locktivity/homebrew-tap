class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.28"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.28/epack-darwin-arm64"
      sha256 "f9614b55e48ad283c2f17f5a1391223c11413ba96a2236d097599b9899f32bec"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.28/epack-darwin-amd64"
      sha256 "c4f118d2bb378d05fd570e37f97bd647ca9d04a88bb0a1981dad214e393b4ea7"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.28/epack-linux-arm64"
      sha256 "62245598ee73a4f513f0fa2f1a9eb4891f2999d4b38c02b0dd69d656d86b7c44"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.28/epack-linux-amd64"
      sha256 "b52ec752afaccbdcc560b4dec5430395e8e9e812ed6174f1ff598355e3d55b66"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
