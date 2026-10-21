class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.3/epack-core-darwin-arm64"
      sha256 "97fd610a1031db9d2839e44dcf9a5183f2f4e8ecfb4c4c57b1bb41c5df6816ad"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.3/epack-core-darwin-amd64"
      sha256 "ba21679e22401de71f509c1569dcd7f82260c96e101d19b72131576211bdabc3"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.3/epack-core-linux-arm64"
      sha256 "9848f279d04c529681cfea4347edd3bbb19112eb0a35ae1f6710eb210cc2e7a5"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.3/epack-core-linux-amd64"
      sha256 "bd5783834f1fdbd214f3aa8a56a7f756378d249d7dad001835922a3600c673e4"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
