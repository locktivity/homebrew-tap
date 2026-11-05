class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.0/epack-darwin-arm64"
      sha256 "909d7d3d20bc5405b8aa00a9975e715d6e3b055c42b2aa462a40b6296139b0a2"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.0/epack-darwin-amd64"
      sha256 "6cbe15dbadce449a421a3e2210b5cec12732f659272e632c39bea2820b79efbc"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.0/epack-linux-arm64"
      sha256 "536f1493cd6cac4ae528028198862326d844b64d941b38358f1acc63252ccdaf"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.0/epack-linux-amd64"
      sha256 "d8c6212558d130f41ade4e6783895e594ec15ec627138ef1d3abed8eaf605587"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
