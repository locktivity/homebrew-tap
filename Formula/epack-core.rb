class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-darwin-arm64"
      sha256 "7ef020a439a01117f40c45e520c20842e7aec3386df7f1cf877be0dc64ae00c0"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-darwin-amd64"
      sha256 "b69cbb1430867b29d69c502c886365e5c9cd24db37f3e0f26cf0684aa045ce12"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-linux-arm64"
      sha256 "1b02f41b6168a54f462f51cd67be11543051d5520b2551201ea478258255bf19"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-linux-amd64"
      sha256 "0792c8722bd3e82612d69cef5eacf6ec8bab10a0c8cd04a0208b3ec11cb7cabc"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
