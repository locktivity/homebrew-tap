class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.23"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.23/epack-darwin-arm64"
      sha256 "722448c50dade2724ac8f880dc98e17b32396c415ef3613e19c6a98b4c214355"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.23/epack-darwin-amd64"
      sha256 "2aa183ae202efcf0f08d67d1b4be9a5e1ea1eb7dec549e8a4f6c6733067c318b"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.23/epack-linux-arm64"
      sha256 "472d4a957cba0e5f9ac31e52c79d5281a5ebfd3140043f93899c887c585b302e"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.23/epack-linux-amd64"
      sha256 "50c713baabd6e71e22f28dfebd21360b1ae0da253ac65d4d3ca02acb33b2fc9b"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
