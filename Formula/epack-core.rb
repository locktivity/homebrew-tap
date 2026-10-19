class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.8.1/epack-core-darwin-arm64"
      sha256 "b99f74323dbe33d25953ff97fdc746901c7197ec813880849b742c2cf6a65b0e"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.8.1/epack-core-darwin-amd64"
      sha256 "a111fc9a46ebe40c88de807b1cec2bc702315dcd6dee1513ec044788d7ecb862"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.8.1/epack-core-linux-arm64"
      sha256 "a21642f44516ecdb4cee5de1718b6b132ebf84cbab53a88d73c1031d23a32016"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.8.1/epack-core-linux-amd64"
      sha256 "a474c537ff4011393751b722c578f98a82a3236fe2cdffcc4c7b906adb157a6b"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
