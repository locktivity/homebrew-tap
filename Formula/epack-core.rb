class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.6"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.6/epack-core-darwin-arm64"
      sha256 "2c1792710b5350166478694058ce71f010c7a9b72fffaa1c2141a68adbfecca0"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.6/epack-core-darwin-amd64"
      sha256 "51681a3c681091cc7a772ce65c91229978f5014b6984cab1cfba1b1d28e3baa4"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.6/epack-core-linux-arm64"
      sha256 "e77755dbc7c5496c0d0a21f7a53d7b9d163fa81b725b5f2b1e01fb6405116378"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.6/epack-core-linux-amd64"
      sha256 "6a4b3661d7deee1106b5c21e4fb5a66ac6efc926c3bd629d454bd903bef8c103"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
