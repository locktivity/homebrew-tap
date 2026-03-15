class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.25"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.25/epack-darwin-arm64"
      sha256 "479d59825b14fae355a481145a184bd59c102e3f1edc3cf3c8437311b7547b0a"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.25/epack-darwin-amd64"
      sha256 "6d6855cae48bc8d617311564238e297d5bf7d644360deece1e60c48d19f140e1"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.25/epack-linux-arm64"
      sha256 "61dfd9e8a3a70527894153d1b7bdfd45a3645354d0a8efaf368e23da60eb34b2"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.25/epack-linux-amd64"
      sha256 "557d2d1b9a28abe6c2e01783d5d072d633bced7a93f32e51cce8a42a08d105c9"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
