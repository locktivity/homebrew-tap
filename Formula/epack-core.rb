class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.26"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.26/epack-core-darwin-arm64"
      sha256 "eee05ce485d4d02bd8f40eea4a57a7d15a0e2b8b2c3818b43b896ca399aa5594"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.26/epack-core-darwin-amd64"
      sha256 "0445dc889f553b7521fd2a93cb0550618de0b57878de785ea97a0b691a08451c"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.26/epack-core-linux-arm64"
      sha256 "9581c5a193071f1cd55014ff90fe81e7b1d3337715218bb311d33f3e45854c29"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.26/epack-core-linux-amd64"
      sha256 "24d0a1b2f55a1a5f17e95dcf8290ab28a7a4db6fc36696a223d3548f8aba0be0"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
