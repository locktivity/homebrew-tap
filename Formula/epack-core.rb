class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-darwin-arm64"
      sha256 "724b8c56ba254d7a943f509942f6bb6cefbc41d0a0092a49cde3c043a305d8d5"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-darwin-amd64"
      sha256 "e6f30fb91126564885cf0661a8345421f621602f1de2ac48c74e836e00ceaaae"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-linux-arm64"
      sha256 "b1b7e77fa0284ef9f29d26170b2e6dc8b12bf79334d995b3461ece1ba1637198"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-linux-amd64"
      sha256 "f38b0bc489c15713b469fc728293d206eb26ebe2b402318df55506fc00e3e3f5"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
