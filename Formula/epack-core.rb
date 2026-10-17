class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.6.0/epack-core-darwin-arm64"
      sha256 "4a58c5b99fd540497d8b0799eb936749838ddf36300ccdd1912a677b4e5d4a98"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.6.0/epack-core-darwin-amd64"
      sha256 "faf34cc8d9a361b5d1bac6a21abe18eeddbe7d987465f158a83e2ce4d37c326e"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.6.0/epack-core-linux-arm64"
      sha256 "cba8cde0c384718b6e31356b705997529ea95210a437c4a8e2ab6d9e836deee9"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.6.0/epack-core-linux-amd64"
      sha256 "7bc952eca4307d450f8dfa658d6f5a05dc47940045642aabb896003f9ea678ea"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
