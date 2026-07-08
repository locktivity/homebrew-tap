class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.1/epack-core-darwin-arm64"
      sha256 "84b9a990657700b09cebac7d6806e37791e6919f89f9f1becdbe83769bfc735d"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.1/epack-core-darwin-amd64"
      sha256 "6df8550bb127bc4628e99b16f4c543e471b47690a2a0e69561e3582ef56fc708"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.1/epack-core-linux-arm64"
      sha256 "406f7797bc3d7b0601ca73cb8a04006062d24e4c120e9c5b1d07becf83854f6d"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.1/epack-core-linux-amd64"
      sha256 "cead71c1f62e8dc59a676dccd4339278435223dc4af21ff0257ff47d3035a2f8"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
