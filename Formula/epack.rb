class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.10/epack-darwin-arm64"
      sha256 "763a1a23cb5371051d3df5a1607adce155142b3f6536d27bf679387c6fee387a"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.10/epack-darwin-amd64"
      sha256 "f861b998b982704e1d314dd3ea3903384a46715bf57da735b61f8bbaea6ec83a"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.10/epack-linux-arm64"
      sha256 "c57b3bcb4d7501d4cfba648f98b5ef74cd3cce663303874e561b5526ae867f61"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.10/epack-linux-amd64"
      sha256 "6b417d4ed4e6a3e0f3102ee9e6c2d43ef5968b11c300ccd920d58a7890b097b7"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
