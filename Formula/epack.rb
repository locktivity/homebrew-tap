class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.3/epack-darwin-arm64"
      sha256 "fbec043ff034c72a80322f723234e4c2e25a81c49ad7d2951e17ddcf92e40ad0"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.3/epack-darwin-amd64"
      sha256 "1ad2c415f00957adff2fc0975633e403268759cc447f477f1588bf090158e8f4"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.3/epack-linux-arm64"
      sha256 "997dabaa336345a4dba26e22cdfd068f124bb6e7c464457b76f67e557fd9338f"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.3/epack-linux-amd64"
      sha256 "5637cca72bee7f3fdee5953e6714cd3989420da781eaa01aada65b8923902857"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
