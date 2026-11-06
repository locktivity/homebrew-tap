class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.1/epack-core-darwin-arm64"
      sha256 "be8e762b357e66d62899c8c84639f9f67418625aa8073cc465aa7acbabbf98e5"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.1/epack-core-darwin-amd64"
      sha256 "9f7af6d9a1e2cd8656042b2ae40187775ffabd59e80904ea76c01d7172492d10"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.1/epack-core-linux-arm64"
      sha256 "642a728aee7fd6095bdfaedf712fbf13af2240cda6761e9afaea332aaace82e3"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.1/epack-core-linux-amd64"
      sha256 "8d3ea4ee1fc664633222f88ba4415b085b880bd5ec8b313f2eca8746f33b54b0"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
