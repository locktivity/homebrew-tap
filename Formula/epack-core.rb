class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.11/epack-core-darwin-arm64"
      sha256 "5b19c43e15380fd6bd3ac90cc28900860e34524f253625f660fc33f11e30a2ec"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.11/epack-core-darwin-amd64"
      sha256 "5295dcd39f332ef9df86eb000036adc6ac31eee2f0fbeb4563fbc6281a937f7c"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.11/epack-core-linux-arm64"
      sha256 "8fe964634a0a330a4988ceeade34bb5c696571c46ff90eec7fb77e5e9f8b3375"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.11/epack-core-linux-amd64"
      sha256 "5c31bc175b2454817d7b66737712c3e061e45d3781e98614832b5e5e2c694237"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
