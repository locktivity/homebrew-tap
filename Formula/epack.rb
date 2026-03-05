class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.24"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.24/epack-darwin-arm64"
      sha256 "e2d70a3d2a7052200e40276a7ac5503aec52b3be88801a41974cfede55096c7f"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.24/epack-darwin-amd64"
      sha256 "fdd54d9eeadb53a25ccff63fe7567fbfc888a02abe135658bedbcc2569bf3114"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.24/epack-linux-arm64"
      sha256 "afc356be9c5227ff585645085289773d25f19ec7d7d854360c5f9a23a30dd6fd"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.24/epack-linux-amd64"
      sha256 "ff9a388d912e3590aee894e27ad50a0a66f9bdabf3871bb85dc99ef9048cc8ac"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
