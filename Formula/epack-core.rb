class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.4"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.4/epack-core-darwin-arm64"
      sha256 "80e2b2844719654083bd6ff71e2ea87a207d1b56c9fdb857f420e29e938e6e51"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.4/epack-core-darwin-amd64"
      sha256 "9549ec3968aad1c82e11e3d522821b4090744d5a77fa4fa0b5c17da762f871a7"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.4/epack-core-linux-arm64"
      sha256 "306504c623b195656e8c6a0b2d93df00bc7d39d03a006361da47baf7244d73ea"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.4/epack-core-linux-amd64"
      sha256 "b7734f8c559c7fc1a1410434923c332e06170b78b49f0f6014ef18d31623fda7"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
