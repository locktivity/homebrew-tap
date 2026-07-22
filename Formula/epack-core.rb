class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.2/epack-core-darwin-arm64"
      sha256 "d861b62289e0bdda40fa4867d95906d5a4c2740b634c7f0102efe166a6bb224c"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.2/epack-core-darwin-amd64"
      sha256 "4d021484dc422a54ff84034c23508e3de32139cd6247a282c2d0d7b7ed9dfa00"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.2/epack-core-linux-arm64"
      sha256 "229b7452405a1e553a44cee70c24ca0386a55f9c3f578a694a3d6602ac3d72d9"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.2/epack-core-linux-amd64"
      sha256 "99d767f27d33f2e06c4094072e615c6c88af2868a57a2138438897aae069e970"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
