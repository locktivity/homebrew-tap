class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.7"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.7/epack-darwin-arm64"
      sha256 "128c3d50cb2539ffbbc4f26db140573374692a2443e9088e01795cd95e9220dc"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.7/epack-darwin-amd64"
      sha256 "4c9b272ba7bc5758268a6fd9909bef56200994817b2fcff501894bab06db22a7"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.7/epack-linux-arm64"
      sha256 "15879a919ef0d6a27e20d0d91d57545a7fe16bd6f4b728f253f4a3f6db34b4e2"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.7/epack-linux-amd64"
      sha256 "323e452872dcbc278417408427363560df105cb1b54477019e1d4c584e8f9bde"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
