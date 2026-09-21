class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.3/epack-darwin-arm64"
      sha256 "3747c78900781425b69d024a6c9c26362421a0a5f6417cfe2a9603f72277f9d3"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.3/epack-darwin-amd64"
      sha256 "dda07a2daf2954f554ce9a9c85054198ec223fd4d42e636cc93cfac14321dab7"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.3/epack-linux-arm64"
      sha256 "d70b0294260b2d115ba3d52bc66c81235477907b843d21e3e8f3fd2a6424646d"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.3/epack-linux-amd64"
      sha256 "8a2316c3cc135500ab6837abc92fe7cd85d181558ea15ad91a5e3f2f92f3f210"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
