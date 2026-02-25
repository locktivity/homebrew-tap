class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-darwin-arm64"
      sha256 "11ef15a90d58906aa02768424829921e2f48fa2d5e778fd9a75507735141de18"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-darwin-amd64"
      sha256 "005b3aa46683419a1620ca109799421024d29a3bf5737c2847690c25300282a7"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-linux-arm64"
      sha256 "401d3976845359bcfd05f97542f8a588499039d34f507a113dc31ce66c8c821c"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-linux-amd64"
      sha256 "01b9a2fa0fce3711a01ab57523ca858078ccbeb7811a61885ee244760ad06756"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
