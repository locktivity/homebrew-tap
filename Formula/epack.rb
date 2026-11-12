class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.2/epack-darwin-arm64"
      sha256 "d58c5a65ec012a88df3d3ca42f6c16610c20e5a13189f1836f5d4de4de9a9c22"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.2/epack-darwin-amd64"
      sha256 "e84c56cdff08c0f01a19601149bb71685eb1ae80a44c57ce6b88d348bc2d11f2"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.2/epack-linux-arm64"
      sha256 "246834fab5d0f0c42b1e47f65eacab2d51330368c6950840c04d66406e5df7c6"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.2/epack-linux-amd64"
      sha256 "6c093b0cb9dde089eb53d89766eb37a70fd7a0c85e822639b8b477c4bf8c3430"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
