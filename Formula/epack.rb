class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.0/epack-darwin-arm64"
      sha256 "83b0a821a1f34f9b991797a584772848044bb52a94fcc71d92871c9ceca3949c"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.0/epack-darwin-amd64"
      sha256 "c3b12fdb8172e1ee7f482bb6884e29706dbc0d2f4fecefea9e5ce81fb820e31a"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.0/epack-linux-arm64"
      sha256 "fda5b89e4b70fef38758eff03ba2a062436990d5452f8984fa2e77dfb361867d"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.0/epack-linux-amd64"
      sha256 "c615fa6b0a7f3f776118ee7293b449fae01947531d0bc55cb117ea7cca4b43e6"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
