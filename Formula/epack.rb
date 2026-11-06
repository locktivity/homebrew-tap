class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.3/epack-darwin-arm64"
      sha256 "a1528764084f3b81e44c6978e134c12f9315325357d8eb8afae764644c05290d"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.3/epack-darwin-amd64"
      sha256 "3b3f636222efeb906b1854b3e1a9adfac444005eb9c3568f2a6cbb50e5ad140f"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.3/epack-linux-arm64"
      sha256 "551bc7ac62df2a605d3ae355b55cede347e739545dbd20ac8cb39da3b3050488"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.3/epack-linux-amd64"
      sha256 "144f025592945862d11b49478e42856c9030e42ca4ac17b39603947e9a5afd0a"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
