class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-darwin-arm64"
      sha256 "27b78b144c5693dffc0bc096931791bd85107f8f4e5126eb4f0fed1802d425b4"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-darwin-amd64"
      sha256 "ca16caef9deca0b877712acb517999aaa7b551a30f75c3c5cfb19f63cec4229d"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-linux-arm64"
      sha256 "64fae04c455f8046d9437f9894c921a23929e53178af1a94dd80c450da010473"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-linux-amd64"
      sha256 "baaba29a15dd257abb43ae238154f546815093ddda238b0f4429b04905c34868"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
