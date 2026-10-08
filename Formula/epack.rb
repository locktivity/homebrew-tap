class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.4"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.4/epack-darwin-arm64"
      sha256 "6c364cd2b06e690f8341460b41b7c073c3b033342b2b7ecef0f3a8175608cd94"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.4/epack-darwin-amd64"
      sha256 "0c6cea56e1b6bfa2f0463155b39b6530656c6bd2f88bca82bf79fabcd3ea14d4"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.4/epack-linux-arm64"
      sha256 "6f2c041e92ea460c94f30a1fe11721c37a635637385fdeb0edaa5dfb888d20d2"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.4/epack-linux-amd64"
      sha256 "31448b61c0bb5e4aa53a4555d1bd0a9989bf5735cef5f1fd7ef90623e4c65415"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
