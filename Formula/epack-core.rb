class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.5"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.5/epack-core-darwin-arm64"
      sha256 "2b4ccd387dca80963e7b6b4b5c5b022e2d0a3fd4df12378ca177e8c0ba9896f2"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.5/epack-core-darwin-amd64"
      sha256 "99b8746086225c6146162b92ec401672aa3ab12cf0c1f42ed07abdbf997f828d"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.5/epack-core-linux-arm64"
      sha256 "059c3859e391a8dc924d28c730ef8bbe87a1142d88d4e7e8f96cc2036a92c30f"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.5/epack-core-linux-amd64"
      sha256 "ade162efb72a902bbeb18a2fc73ef2e1a6d30316342865cba05320394ba2dbc0"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
