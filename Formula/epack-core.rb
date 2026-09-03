class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.2/epack-core-darwin-arm64"
      sha256 "e5b70d4132dfb34b0c0ed7934829f3ba9db9854770f770a40427a7cac1f0745d"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.2/epack-core-darwin-amd64"
      sha256 "5c8f19f12fec1a55c5913f83dac8a1af44eb948a91fd0d2104ba5a17f6a26723"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.2/epack-core-linux-arm64"
      sha256 "e8e20500213a15030139ef6f7d0e12258d47a854bc6186b2cd33f3d4ef10b92b"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.2/epack-core-linux-amd64"
      sha256 "56a101e5f5bbaa3229faed6b5fe265e6c8742035f70369b71b9cc263f4764259"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
