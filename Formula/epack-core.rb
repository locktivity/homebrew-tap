class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.4/epack-core-darwin-arm64"
      sha256 "a6c470be548b033d2db1d0f19c09a8a0c4f933248b5c04dd1834822ebaa7d865"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.4/epack-core-darwin-amd64"
      sha256 "debc948437e1609b58e631f66a0b85beb31dc2536bc34f5eeba0a6d27651559a"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.4/epack-core-linux-arm64"
      sha256 "1cfee096f6853edec57f9e42415bd119aa78ff1b043efbd2c4eeffb99cd71eaf"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.4/epack-core-linux-amd64"
      sha256 "9e0177b5355fa1c3c496fbd1509da14b3d036249650a888453e428683b9b54c3"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
