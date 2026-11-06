class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.3/epack-core-darwin-arm64"
      sha256 "972757ffc32d9d381a6add8393db0a75db3664bbdd226adfdea7854f909c01a3"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.3/epack-core-darwin-amd64"
      sha256 "a53be085f2d8073b4a7c40a63e67f46317757b697067e3c5e246c9ef54da5458"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.3/epack-core-linux-arm64"
      sha256 "94b539c5d22500720c8ed64eca65a3cbfe4346833604a8fc697993f72f34b5f8"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.3/epack-core-linux-amd64"
      sha256 "6972170751538568a3989562622fcf5b7d8474e9b3b70508bb11882e44f0ffae"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
