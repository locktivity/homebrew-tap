class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.5"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.5/epack-darwin-arm64"
      sha256 "45ce2dafce2dbcc2923e588d61eb0e70cee2a92a990a53e45ab9fdcd60059936"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.5/epack-darwin-amd64"
      sha256 "742f881e30237290510b08a0c0cd04854a53f4672835a4b09f0ef3e0e9645023"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.5/epack-linux-arm64"
      sha256 "55e8f74cfec54d6673946b2ce8afcd84537929cc055652262b3c1233f71345be"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.5/epack-linux-amd64"
      sha256 "b6a75e68412f96afeb6e852b2ad7d700720cf186be9abbc3bcaaccb80d76fcbe"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
