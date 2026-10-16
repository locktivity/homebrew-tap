class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.3/epack-core-darwin-arm64"
      sha256 "af36d8a5646b27f3644700aa50dfac176e3c037e300ca92197822a921908014b"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.3/epack-core-darwin-amd64"
      sha256 "0251db1014e0143322cb5a473533763f97045cdbe6ab08df2456da083498cf81"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.3/epack-core-linux-arm64"
      sha256 "7b128c599c0f59c94cb8264e81de9ccdd7df4f6bc875b4f7640174301efee1eb"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.3/epack-core-linux-amd64"
      sha256 "cc76f9fba4d1b94faefea16ec8e31bad8483783dfeaf85f36c57d7ef845b4d9d"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
