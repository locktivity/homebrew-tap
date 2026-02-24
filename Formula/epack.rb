class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.6/epack-darwin-arm64"
      sha256 "28001e67c14bdcfc2f145c7466d2cc3002f44bebb94ed77ad948f6d5d672e379"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.6/epack-darwin-amd64"
      sha256 "6d46dc3fbcb0cc71e8f824eb080a98d45ff18a8607842b99411b04959a4d083b"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.6/epack-linux-arm64"
      sha256 "369861cb4e25c45feca5e9e11a8f7c0fd84f773781d85ce65e84216281de9318"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.6/epack-linux-amd64"
      sha256 "0040d5df2dab5907785fa3a5a26d800545fffce8ad27026a826a8d3d6eb7a777"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
