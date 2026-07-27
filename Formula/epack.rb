class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.0/epack-darwin-arm64"
      sha256 "268e808dbe03eb56110e441bde28d3fe5dfd62a36ab3f8b2ee12895532433909"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.0/epack-darwin-amd64"
      sha256 "a7d0cad01652ce67d2cd289aafd7058851e87a5d4c9fc7b6b055b7b1c98ea46a"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.0/epack-linux-arm64"
      sha256 "0671afb8729f1cf26d0a5778a0f96e53638dfb00f2e7c04c14cd8a2322b88d3a"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.0/epack-linux-amd64"
      sha256 "0dcf8ee3a952e9268287c2ce6b41e7140ce9ae860c893b97bdbc54a1c1266328"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
