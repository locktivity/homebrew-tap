class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.8.0/epack-darwin-arm64"
      sha256 "72299dfa53cf55ec85327b823f4f8178e4cbd2b8f0798394fa2ea97bccd3bf20"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.8.0/epack-darwin-amd64"
      sha256 "2a42f0275b9d5eced01c5cd1bba9accb7fa7919dc0439082f7c3c9ec8cfc46e7"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.8.0/epack-linux-arm64"
      sha256 "8388581a89a73a5a38937c90cdafa0465ef04830d0b140634df56aed48f9871b"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.8.0/epack-linux-amd64"
      sha256 "089cf88f8ba6368f694e9dc9e82001b80eeae5e69129ae611782883f46105385"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
