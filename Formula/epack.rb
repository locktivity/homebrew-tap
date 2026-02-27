class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.19"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.19/epack-darwin-arm64"
      sha256 "ae44bbc93d7e2ca3cb6d50f070cea4a638434ac5b98586dbd425de8b2dec5551"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.19/epack-darwin-amd64"
      sha256 "f96933ed4644c74047851b60bdbf8c40f8d71c730c8b97bd7285bfc8325470b7"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.19/epack-linux-arm64"
      sha256 "da148bf183aa8eb996296d1ed87b2b0a9251dd86dcc0f8835607ab8c65fef79f"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.19/epack-linux-amd64"
      sha256 "5dfc6cdfb9202f500f06bffadd8bf7380e1f5dd20aa248b84772e0f7d3cfa074"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
