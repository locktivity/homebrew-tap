class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.9"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.9/epack-darwin-arm64"
      sha256 "621abcd34ac11ae4a40d40d1bdce099c193375111582e2fa0cb1eb4552fc6fdc"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.9/epack-darwin-amd64"
      sha256 "97d860aa14f8ed02ae81653b74bd74d1050a47ce3b50dcc94d02ea6ee1fa60aa"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.9/epack-linux-arm64"
      sha256 "0b207b7961122d0254a76dbd35058345631da2fd32a5d0ad5b2da208cfbbdd08"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.9/epack-linux-amd64"
      sha256 "a8769574b3b6a5d44ee070b4e9c4ee1f87c5549cd9efe71373d903cac63b9e86"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
