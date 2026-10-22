class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.6"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.6/epack-core-darwin-arm64"
      sha256 "1821b04a00fcb2532fa10c72f5feaf2141225b3cedca6fed5a5c3fde410c0769"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.6/epack-core-darwin-amd64"
      sha256 "a444ee0597ceb3b4dadba1012cd9572e8877585e6b7db5e9049a66b3d14548b2"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.6/epack-core-linux-arm64"
      sha256 "6fa4401efc7b831a065fbce23f354ae59d5845ffab7e8b4d0b17cb28746e7449"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.6/epack-core-linux-amd64"
      sha256 "baa6b90f7bae2ea6bc89ef31b5016b3db7767cbcbe0cf67212ef010d251dbb86"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
