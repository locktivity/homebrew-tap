class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.2/epack-core-darwin-arm64"
      sha256 "a07878b44ac54205fde8143d8478c3b292620adef0950111f87f3deb09d240c4"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.2/epack-core-darwin-amd64"
      sha256 "b38c01fb207ffb18df36d0ba95a86daa10a808881ea43b34007a2375cc50a78a"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.2/epack-core-linux-arm64"
      sha256 "94b4b0d01bcfe55a04ead1e3f254e3b2351275fb022ded3d5190bc542fba58b9"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.2/epack-core-linux-amd64"
      sha256 "4a2cdded073bbbd6134adcf8d7dbd99add44a61918619b04fe8ce57e232bcbb3"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
