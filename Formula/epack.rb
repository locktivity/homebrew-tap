class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.0/epack-darwin-arm64"
      sha256 "9b22009345b690754c6fb28e19235324933d2af7c07cb955fc9f73de6bbbbe85"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.0/epack-darwin-amd64"
      sha256 "294bf9ac1cbd143e63d01e8072c9e5341b8fdb8ffaf8720b3b7d96a167bebb34"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.0/epack-linux-arm64"
      sha256 "fa10aaad82fd71dec4bd15e1bb6103d04e6c54d04f73895908bc6a44620b2cfa"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.0/epack-linux-amd64"
      sha256 "72c72e5b7753e74bb36a6b6b4ed612dba720c3c43b7bce814d43a5d0f15ddd60"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
