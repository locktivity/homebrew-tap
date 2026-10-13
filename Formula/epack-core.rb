class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.8"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.8/epack-core-darwin-arm64"
      sha256 "1cd9a0d607dc34f55adb13afa876e559003f425ec6b8387cf5c1724a68e3942f"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.8/epack-core-darwin-amd64"
      sha256 "23bd7257520a8d29cd14b17b30377242bca754167239747d61481693f98841d3"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.8/epack-core-linux-arm64"
      sha256 "bd7e675a54c4a56a8602347597ffc8e2ea26c78df6db5c56a5a2a3ce084162dd"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.8/epack-core-linux-amd64"
      sha256 "3aa48e1d1142dee70133464c88e7e2be10fb269be4033353dd50bef784c8aaee"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
