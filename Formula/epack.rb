class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.2/epack-darwin-arm64"
      sha256 "ec9bfa156adbd017ad831a1c19deb92a3d0d57d95f3f607bcdec20292187f814"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.2/epack-darwin-amd64"
      sha256 "17d1ed0bc63cf033178960abe86e6c42a044785c47db01837b6c25f51e07f2e2"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.2/epack-linux-arm64"
      sha256 "84c9c543fb0fd429f824bf90526b4e0b6c8afc1468be4ea448dc0765aea37f8d"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.2/epack-linux-amd64"
      sha256 "0fb8201ea1ab703f55ed2638a43e717ad4f0f11d7560600ac0d6bd8f08b41754"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
