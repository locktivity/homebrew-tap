class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.27"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.27/epack-core-darwin-arm64"
      sha256 "0d21929de99f1522d84053ba846533d29af113cfc300f522e90ec33f63d42975"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.27/epack-core-darwin-amd64"
      sha256 "b6a409fe1882745d5cab8bda35cc4abc1cda1d9514c080857f514667285c0ab9"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.27/epack-core-linux-arm64"
      sha256 "99a0f9722cd38c246483a2397025e898f285b70cc883b5bd95bcf936904645c9"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.27/epack-core-linux-amd64"
      sha256 "2cd6c0ee1980f9cbf8538a7186331013866a969ac08d20aed47eeef3fa205c94"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
