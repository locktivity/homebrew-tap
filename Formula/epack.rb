class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.3/epack-darwin-arm64"
      sha256 "292b23b39eb2da0caaea0f1abf834eed7c21dc5e3132885711d75136862df64a"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.3/epack-darwin-amd64"
      sha256 "e542f20bff815dcc74879ffd358560a48c68f3d671a20fec08cb75db73f74d9d"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.3/epack-linux-arm64"
      sha256 "504868ef4cba3f14026627b5586a0a9c9743c81681b60b919e47d6149127ae4d"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.3/epack-linux-amd64"
      sha256 "82cc4241eae803dbadf33646279846f900e9427988ec753f4d1644a023dcf97e"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
