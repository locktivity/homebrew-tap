class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.12.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.2/epack-core-darwin-arm64"
      sha256 "96f32d1a9776bae5898538ee0b136a6d9e6ca2bfb2c09123ae5ee139f6bf7e76"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.2/epack-core-darwin-amd64"
      sha256 "2828794ca4f963dc0c1460dc5b00e28f2651c395e1b804c1281930cde3c60fef"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.2/epack-core-linux-arm64"
      sha256 "aac796e5675cdcbe56a5c10d21574a446777e0c804a757e743c39aa6f01bcb68"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.2/epack-core-linux-amd64"
      sha256 "e12c55b3766bd7b144240e50d8afd9787137a64288453c3e9a8fa21befb7f0c6"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
