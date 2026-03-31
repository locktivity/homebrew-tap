class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.31"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.31/epack-core-darwin-arm64"
      sha256 "0384dd1435cecc6dbf8667f014096d3527c43f05d7efa5be70f759e618eba22b"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.31/epack-core-darwin-amd64"
      sha256 "a5c6af6cf24306a28b5d08c55e5c0493bc4a4bbe50b04d8edd54e67f753b881d"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.31/epack-core-linux-arm64"
      sha256 "c7a174bab7559577bd88145a43317cb028b356fae45af782a430b23c78ae26b9"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.31/epack-core-linux-amd64"
      sha256 "bdb08a774dac6094ffbdb854f642017693c53bcdeb63cc08a962b1c7ff2caed9"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
