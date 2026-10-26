class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.9"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.9/epack-core-darwin-arm64"
      sha256 "5bc152c643f78d41d3d67019b921309a3e331514aa1931d5615e331a3eaf12b1"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.9/epack-core-darwin-amd64"
      sha256 "399f683d958ba7a8cc1ee6a37a39d4123e2d5df289d35df9065860d8778c0f3a"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.9/epack-core-linux-arm64"
      sha256 "e95a6cc4a37047f12b7bd1c0df4cae39a99ce7b3d9139b76fd9f54410a5000e2"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.9/epack-core-linux-amd64"
      sha256 "a78a7bda20540e963c01b4b622287b6876c6bc6eefe1d0aa61d8993d9e2364f8"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
