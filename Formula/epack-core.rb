class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.3/epack-core-darwin-arm64"
      sha256 "fc1f3c8a0ef32eb31d04dc08b5dfe9760fb54c6662e13aecd7b28e531d5e3757"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.3/epack-core-darwin-amd64"
      sha256 "20ed55fa155af35c1eb6ee6c0469877fd3d68a2d78937cd551c87ca084465b1d"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.3/epack-core-linux-arm64"
      sha256 "fd80cd6eb6287d9a0f266a1f9f56999dfeea66b6d371c485347dcb45aae18637"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.3/epack-core-linux-amd64"
      sha256 "e54584eea8d451dd0c54bd8d480239cb0422322fbdc5ac9d4e489ae2cc0683cb"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
