class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.2/epack-darwin-arm64"
      sha256 "6914fd732cdb0cd6f372e4cae377c06c2a60a867c1ff851c6044bcfc2edfca1d"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.2/epack-darwin-amd64"
      sha256 "b6f547fd7ad3a595fcf840aa8375134fb1c62aa35e51e1d7115f97415455c183"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.2/epack-linux-arm64"
      sha256 "f9157958779be45d020e00e4436e737328fe746eea9b5440d0d2f10cdcc5d505"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.2/epack-linux-amd64"
      sha256 "596f965e11f059dcb704ba9359c3d567df60ea3c8bd2a398550f151342a530ed"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
