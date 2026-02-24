class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-darwin-arm64"
      sha256 "9926b96a506eb1747c5928fb0c21e72b3a3c4826479032c8c8ccfbde3aea37e9"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-darwin-amd64"
      sha256 "26f0f0b97d37808bffe475a793a49ef28193387a58756184198720d4b664f0a4"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-linux-arm64"
      sha256 "2500b137e405750114a6316ae2c1931134563f9ad2d6624abc1a3212e3425b9b"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-linux-amd64"
      sha256 "a194c683974caecea848738834da4ee159b0459bef3d70344ff15d13a7903555"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
