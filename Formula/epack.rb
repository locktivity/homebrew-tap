class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.14/epack-darwin-arm64"
      sha256 "563ac52a564e1eb73af85d3d60215f36fa03101f763928478934ec8af6458bad"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.14/epack-darwin-amd64"
      sha256 "c51bf32c2c3940ca55e6d60fdcd355b6ba82b828e48e4ec657d1e94bfa9dd360"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.14/epack-linux-arm64"
      sha256 "70f3eaef0eb35eb6a94bb451b1226b86d9ab30ecfb5406dbe1bdfb9eeb299d98"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.14/epack-linux-amd64"
      sha256 "1c2f1e53d66fba4e542917a32a88e6793f79d8e55d03f6c5f1ca7117c781c60a"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
