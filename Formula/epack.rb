class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.1/epack-darwin-arm64"
      sha256 "2c0b86f1ac379646084277901e532d8a8d94cb53c8767c1ef7d013c1d607eb72"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.1/epack-darwin-amd64"
      sha256 "01bef885de1161216f7fd599daf163c6ba3cf897b2f8e4f03e38aed2b1156dc3"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.1/epack-linux-arm64"
      sha256 "dfb5d1846ae996ab3be765a17ce0abd076c685456bd83a7f218b019ad69d9d24"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.1/epack-linux-amd64"
      sha256 "d00fd41a64ee3df8c415019405165d39e3fefd657d359da3bb96af2319519966"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
