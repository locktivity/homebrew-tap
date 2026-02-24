class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.2/epack-core-darwin-arm64"
      sha256 "9b62d0351fdd27d35aa2d8b47b8f494faa7145b8fefb07cf1b8cabfe4c98392a"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.2/epack-core-darwin-amd64"
      sha256 "438b5900e815f007c9dc22adf43836084787da70f28dc0602cbe07583337309c"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.2/epack-core-linux-arm64"
      sha256 "fd2930fb0b4d3c8975a9095330b0071c995522e33c30faf92358c73e6780821a"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.2/epack-core-linux-amd64"
      sha256 "95850b047ff94db9247f4d9b4a09ea0625773aa1168f65866fe8a21eac349751"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
