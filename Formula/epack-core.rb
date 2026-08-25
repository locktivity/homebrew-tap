class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.1/epack-core-darwin-arm64"
      sha256 "2c016748aedb50b679b83766381e663c8cc970254e4f8ecdd2d58eef317d9cfa"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.1/epack-core-darwin-amd64"
      sha256 "97d42365d6b49a7d29af9c522af78d251ab0346e0e155a2e80d9b746ac2da3a3"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.1/epack-core-linux-arm64"
      sha256 "2a06e9990ad5e2b4aea6fcb0c4a2363b6982bdb77609c475a718f20e5b7cdf74"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.1/epack-core-linux-amd64"
      sha256 "94cabb51c9d4e8c1d906db5e54ca053a77c8896f6bb8324e7c1bff583b524e08"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
