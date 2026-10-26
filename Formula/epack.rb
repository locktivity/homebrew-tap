class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.9"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.9/epack-darwin-arm64"
      sha256 "287e871422ac03ba598ae59ea058df58e2e0d93c64fc22ab893bea3185fb2a6a"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.9/epack-darwin-amd64"
      sha256 "9cfb0568c512fef2457693b3dd23d63f78d6f2463312256e6e75facfe30755ec"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.9/epack-linux-arm64"
      sha256 "9a255d845852f47285acc8e28dfc4441c5208ed0a900bc412f1572b6814071e3"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.9/epack-linux-amd64"
      sha256 "bde55a8d499071701217041301e82bbaf55bcebbd9fa11087e6fe6dea327ee2b"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
