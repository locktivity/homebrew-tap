class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.6"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.6/epack-darwin-arm64"
      sha256 "567fbc44d20eb22af631259613cc7ba60d47d556983d7b05bb246c1841fcafb2"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.6/epack-darwin-amd64"
      sha256 "67c3fb574fa942e85367974bb280ba9e0121e63cde2b068c1a3574fe4a4bf531"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.6/epack-linux-arm64"
      sha256 "543e0bef5884c50ca5f365f7a8cee9f283fd17d08e6c858a982c95a53917420c"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.6/epack-linux-amd64"
      sha256 "ec6d1581ca1efb4bc3ad0cf786d6613cb0fb951bd68e45fbaad6f015c77062e5"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
