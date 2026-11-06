class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.4"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.4/epack-darwin-arm64"
      sha256 "3d455426ddd1dcab53433f1bed954580ac54e8bc43a8aab062286f774ca2d870"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.4/epack-darwin-amd64"
      sha256 "e5d915a901c6581b01236422b2277d6814b50f14e995050242531e68f4a18b3a"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.4/epack-linux-arm64"
      sha256 "853b6a648cbb83e2565901d6c5f036a9aaf675512fd1398783e81876897385c6"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.4/epack-linux-amd64"
      sha256 "530cd904ae170392cfe238fc71af493a2ee76e2df2f4b62851f98d300b7e0d90"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
