class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.12.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.3/epack-core-darwin-arm64"
      sha256 "0ad090f6c93c60ef074029e253323026d1c882a2631d2e177738f69f38d7acce"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.3/epack-core-darwin-amd64"
      sha256 "d2784238833e323047690fd887e4b81c011fdf3935951380767d8191c36c2c58"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.3/epack-core-linux-arm64"
      sha256 "fa6363d6f0cc3c87747ea55a2e1282e6961f8e350ccabf724f27863e7c79291c"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.3/epack-core-linux-amd64"
      sha256 "cfce63db3c5cf97c1b95e4ccab21023af6b987380961a42c4342526b5f34a686"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
