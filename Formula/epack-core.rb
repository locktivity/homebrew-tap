class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.1/epack-core-darwin-arm64"
      sha256 "0d1d8edb82a98308d027e9b066555e9f7be120b2f901f57573562231d3c65a6b"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.1/epack-core-darwin-amd64"
      sha256 "aae90935f438c24f23d46d04c4ea30b5b5b2af8fecc7fcebb83843154c0819d1"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.1/epack-core-linux-arm64"
      sha256 "cb285c6a503cbfa44f037b796cdc158fd5b44995c2b9e320fc4b128ef056dda5"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.1/epack-core-linux-amd64"
      sha256 "2dfcfcc61b4d802a590ce23bc499ba5310960dc2f962cf0ed1771a5cf6b909b3"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
