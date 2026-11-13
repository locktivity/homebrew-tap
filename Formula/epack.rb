class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.12.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.2/epack-darwin-arm64"
      sha256 "5dc9679368e1e4ac80df1ceb386ef278f7b3a2f71ae2970814acb7d15ff2c227"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.2/epack-darwin-amd64"
      sha256 "8e8c321474bc624f3c0fb0aacdae31dbf2b07e11f53fd1052ad05985572ebe6a"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.2/epack-linux-arm64"
      sha256 "266cfe61c58e4e33adb7745e5ff17c11e71c2f4abd6d61882e803c2126a7843f"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.2/epack-linux-amd64"
      sha256 "44c8bd19b03550b9aa82d3f7cf630c599d1e4c133e6e877f80d725a889e6f68a"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
