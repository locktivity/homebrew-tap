class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.2/epack-core-darwin-arm64"
      sha256 "c659a947135437490e5e715d580f0fa8b6d8d235d2fba1878cc3b2b66b2053ab"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.2/epack-core-darwin-amd64"
      sha256 "f9ae990c099378ec45f94a9966efd44d7111b84ffff422240f7846be093d4702"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.2/epack-core-linux-arm64"
      sha256 "98d42810b13f40ea351c938e85d81b68343b52c86a4decfc1c52aff6a00f8cc0"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.2/epack-core-linux-amd64"
      sha256 "cd542da5f18f315930328afd2edd15c2c8fdbf2329c83c618f788c26569c4e3c"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
