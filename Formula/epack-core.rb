class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.25"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.25/epack-core-darwin-arm64"
      sha256 "4e8fce3e348a3057bd37c2719af75c5a1bd57f75075737d6c4a48f9c7910cf76"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.25/epack-core-darwin-amd64"
      sha256 "1a1c8c17f4bd8910b5b4f62398d374b50c62de3042536a9b0b867cbe1e779936"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.25/epack-core-linux-arm64"
      sha256 "b6f302ce8461a6cff49ef34a32cf911be1fde1760f74c8ef0cc8d9bd50fcf32d"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.25/epack-core-linux-amd64"
      sha256 "805b927171703fd0e1b15071bf679efa2cc9e680e3ea7b2209540ef7bc798c49"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
