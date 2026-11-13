class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.12.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.1/epack-darwin-arm64"
      sha256 "40951e2e8000798eeab38de362e8e8da1dc39fbf4973617cee90255f244ffa85"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.1/epack-darwin-amd64"
      sha256 "3d4ea887a14c63506e746bb5a88af0ee00ba34ddaf45a5b1f04d904b8f2edacf"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.1/epack-linux-arm64"
      sha256 "058c4c2dfde63142566c0b2f80bd3ec170f732809f47dd444769307ac3df233c"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.1/epack-linux-amd64"
      sha256 "e7e9be10b00c951972d426d846c5a58532ca3495ed54d790947a0fdc7dc0cc1c"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
