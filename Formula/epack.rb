class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.12/epack-darwin-arm64"
      sha256 "175074689c976de065e238725564746466333c50642c16dcf5e92fe30a3256b2"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.12/epack-darwin-amd64"
      sha256 "48145c94db4f836bc2d21eaf8a2eb9e79b85fb7d0ada675f7de400d7ba01555b"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.12/epack-linux-arm64"
      sha256 "9979491472c5c52fa3619670eb615fae2466afcb631e38f71f72046da56fe29b"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.12/epack-linux-amd64"
      sha256 "a92fda2d7926dfd70834d483244da0b37eba2abad844a29ec6eb70438230553c"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
