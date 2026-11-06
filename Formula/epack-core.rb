class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.4"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.4/epack-core-darwin-arm64"
      sha256 "ea5bd877b890c44536cee4de22244d62141455ef734dc1d9a67d0461af7d42dc"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.4/epack-core-darwin-amd64"
      sha256 "8bd68b0d7664befea4481f4ad662071bd7c1c2098d374b3724be76e757133048"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.4/epack-core-linux-arm64"
      sha256 "325d091324e823258307f94182fb0dd7fc66eab03bf1a5bcbcba834db47fa28e"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.4/epack-core-linux-amd64"
      sha256 "2ccff3054b3471b821db2b9fa826c8187dd355dcb6e7106b3f1f9384a28f5520"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
