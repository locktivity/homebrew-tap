class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.16/epack-core-darwin-arm64"
      sha256 "6277645af801645c07885878bf68622b171d8a86c200756de71689a00a8640d5"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.16/epack-core-darwin-amd64"
      sha256 "3e4ddac1e0d15fa49bbcdad137b809a03d6b71af5e69869e8938878aa656f55f"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.16/epack-core-linux-arm64"
      sha256 "12c468291337c612c726e68711df5c835478f5e7e83ba5d412d60ede3ad4f3ab"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.16/epack-core-linux-amd64"
      sha256 "d5c8ee397ce9e478438fb573de2b08b1149735a4cf309ec376a00acd8f153c5e"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
