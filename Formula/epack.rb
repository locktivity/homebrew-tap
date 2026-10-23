class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.8"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.8/epack-darwin-arm64"
      sha256 "5449a1f412c552b791d2e20cb7d9e0fe54567b4337fd50590b3da84b15861e84"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.8/epack-darwin-amd64"
      sha256 "3fb2a6564c4486a5f588bda4ab33e409295800297ea89d942016632f65c4dec0"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.8/epack-linux-arm64"
      sha256 "7ee93dd8377d2e5d5e29868f2f964916197f012820b69ee5382e914b80c6ed3e"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.8/epack-linux-amd64"
      sha256 "edcce1c0263ccef9d2cf5a0831e9310153a4a12a64c4c87516a68e69d914c112"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
