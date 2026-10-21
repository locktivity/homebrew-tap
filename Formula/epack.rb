class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.3/epack-darwin-arm64"
      sha256 "c57d3a1518909280204eea5b7dc4199933ee4c09166589c829f076e3bdf3360b"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.3/epack-darwin-amd64"
      sha256 "ee29bac742149e23d95fb34194b5d0956ce4835b025fa09b0c6d8ed66f16a467"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.3/epack-linux-arm64"
      sha256 "ec53a28ab0cb3ade439e5c0473d04ecbd245f7e1f51454cae4655a68d920d15d"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.3/epack-linux-amd64"
      sha256 "9021b23c29626700e6a4879693b60f42e3fe9ba02bc4336be53d3b7920bb50c4"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
