class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.20"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.20/epack-darwin-arm64"
      sha256 "db264a420a9c7a1c9a68200c817709419f011fb5cc6178e0145b324df988fef2"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.20/epack-darwin-amd64"
      sha256 "ee94adbb349b5d237ca0476ca8dd2bc0a52be0f4d1db150655f5716a90d95225"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.20/epack-linux-arm64"
      sha256 "aabe2394b1ca01486f2e97d18f1db45166ebf1cc817e19ce943b95f8f821d060"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.20/epack-linux-amd64"
      sha256 "f803a60cc5c00893a620cde8268370cdd83708f054f7defbbc9c9768b56707d2"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
