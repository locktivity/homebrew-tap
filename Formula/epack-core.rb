class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.9"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.9/epack-core-darwin-arm64"
      sha256 "a0a44e4ba5f7e612ebd7bda632402fb0cdc093e833c032720b11b045016c0704"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.9/epack-core-darwin-amd64"
      sha256 "7593d5d668cf8316363121cb9d25af538fab88b2f4880ce2272c0f179329af9e"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.9/epack-core-linux-arm64"
      sha256 "bdb836356e4e66b76131be7d42ce0e2bf0572e41c19970ea618a10a3f45f3349"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.9/epack-core-linux-amd64"
      sha256 "7dbc2ce2cd13367a58205d353fd5883d458cead6aa40588855c9607c7acf5120"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
