class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.20"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.20/epack-core-darwin-arm64"
      sha256 "1753749d9ef91361a3e60170c970bf24ac8c45e2abaf7d7baff6979d5422e70a"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.20/epack-core-darwin-amd64"
      sha256 "8d149596d444e835fa21a121e87d2950f72aec79c563c85dbd107819f19ebc41"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.20/epack-core-linux-arm64"
      sha256 "b844b65d5031930645ab825256ea8f2ddaf871407a92b6e3e7f5fd47f79a7343"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.20/epack-core-linux-amd64"
      sha256 "9f877a9c78233a45ab9ce0d95ebfbfdc02fac90c50fe942a8ebf182076097b53"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
