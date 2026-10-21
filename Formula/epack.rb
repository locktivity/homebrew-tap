class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.2/epack-darwin-arm64"
      sha256 "9173b1ab5f4d2388b258332eaaf8f6eeb5fab1722d6d9f9c77f23023f339deff"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.2/epack-darwin-amd64"
      sha256 "85dfe3cfc58825b7c4aea6d7d9d47c9f7a67aa4fda779e6d35bddca9aa1c2544"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.2/epack-linux-arm64"
      sha256 "e3213012ef4f8b8e99262b2a16c14dbc2fecaecc3f3084885d963c228f3cd784"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.2/epack-linux-amd64"
      sha256 "9ef0a55ba64f31a2e7badf40e61625cc2a352feae942402df10f3bbf21bed330"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
