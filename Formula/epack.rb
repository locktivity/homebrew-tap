class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.21"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.21/epack-darwin-arm64"
      sha256 "30209a229f6bff3a9bf27847a82e1fb1b93aa5ac4788a6cd968db2616ae57dc8"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.21/epack-darwin-amd64"
      sha256 "4c39b199f8fa71dc7f4cc46a6d041ea9a04e89d5a486dd23803f57b0c3939208"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.21/epack-linux-arm64"
      sha256 "0e39b3d66be556c5fa21742f09a1c813666a70cbd7bf555c147d5df195ea40f1"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.21/epack-linux-amd64"
      sha256 "befa830dcf53a88db525c629a4264d5dd6a3255449963ea42508afb03818d3bd"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
