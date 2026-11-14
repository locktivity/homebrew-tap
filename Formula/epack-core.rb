class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.13.0/epack-core-darwin-arm64"
      sha256 "d62278ff0c03f1cc402efec45c02b2aead9e62cca4b8ad3b538982472accf272"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.13.0/epack-core-darwin-amd64"
      sha256 "eeec684cbb3584c386c997eba596b39181fea051ecad2f9ec1dd3f802e0e59bf"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.13.0/epack-core-linux-arm64"
      sha256 "179ac2b1462e093e4ef094f6bb8247f93b387de2fc6767c00f0419271fe287f3"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.13.0/epack-core-linux-amd64"
      sha256 "bac5c0de871008ea60d06fa61f5a8dba41a4506996e6ea591f7b3d36b967ff06"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
