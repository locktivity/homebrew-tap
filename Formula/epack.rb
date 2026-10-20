class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.1/epack-darwin-arm64"
      sha256 "3202ea36dd587274978cde4efa8f88a906f624843f0d9828b9ad597b74b437d1"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.1/epack-darwin-amd64"
      sha256 "381b0242e6692d2a91ebaa59e7069e1d2aef5f7c1a5bfb1f0bbd75162fc01856"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.1/epack-linux-arm64"
      sha256 "18f6dd0431e412d43144294211860de0387d132df1f80d6c5472defc2e208491"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.1/epack-linux-amd64"
      sha256 "ca61663f3842e2eae9b37a5d3128cc23085191bfa2c97c3a1fb3c33b4a5a901d"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
