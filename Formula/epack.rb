class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.2/epack-darwin-arm64"
      sha256 "acde0e9321a23bc006d3df07bd4447b6f70fd809e514e0f1e50839306f30ee11"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.2/epack-darwin-amd64"
      sha256 "05c6ff4941194869d237079d19a094b69d6b7b71127ba01a0471585c27d9d22d"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.2/epack-linux-arm64"
      sha256 "5a4e6da0e549b33dba33a43c3d8588217202c04fc6ea7f2ac90316e45fd29653"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.2/epack-linux-amd64"
      sha256 "cf7b70966755d02af4dbbd6fb0fd1737fa02b5d20086c48894bd99f54fcc5631"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
