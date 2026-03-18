class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.27"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.27/epack-darwin-arm64"
      sha256 "8aa46c1c5e5be6d088fe577836b247e326968fc34be047cc3aa35e4ef76f312d"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.27/epack-darwin-amd64"
      sha256 "6f9f2e600f65836a8f1f17614d3c70bd1a0f269bc31499ff1d04a785bdaad5d3"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.27/epack-linux-arm64"
      sha256 "dbad13f93ebe3b9d268f3d7be1d7cc2a8a2dd8a9a0edad9b6bbb0dd8f0bfe65d"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.27/epack-linux-amd64"
      sha256 "90d0cf1ad39f4542cc607019c9838cb3e3a095f4b6bc59fe03da73e25e3feaed"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
