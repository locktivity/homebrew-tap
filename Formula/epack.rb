class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.12.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.3/epack-darwin-arm64"
      sha256 "ceebf77e4c450082f910832d12b3504b43a87833791069164aae88ec7f81c5a5"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.3/epack-darwin-amd64"
      sha256 "07c3210a39f837ed105526187b2cc776a348f3de12f14416e7a01dac1be478cf"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.3/epack-linux-arm64"
      sha256 "7e60eaf6b577f40af58c3a1e0e817c540d5508a33c683d018ae9c9fc57b84522"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.3/epack-linux-amd64"
      sha256 "aa1828a6e6795b1bdd5c3ea219acedf075fabeadea9e2ee5628632480ebbc871"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
