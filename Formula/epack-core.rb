class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.12/epack-core-darwin-arm64"
      sha256 "4acd5926013c7722f424c8e01533a890015c9e10b685bc31ab7019a3b705ab8d"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.12/epack-core-darwin-amd64"
      sha256 "e10fa22b2f357760c1515cd8c0ef9ab5555f3abcb387328e5fbca466bef83df1"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.12/epack-core-linux-arm64"
      sha256 "0ae198d84b3c13521d3433c9d173360b1a6ada00510fa0dd4b84d1d7c14bcd5a"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.12/epack-core-linux-amd64"
      sha256 "adbf9d446c7f969a47e42c4b741470469cb60f166b4de0b07ee69cf1751eebb6"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
