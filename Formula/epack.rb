class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.7/epack-darwin-arm64"
      sha256 "3c221dc6980c7cdb8316880a3a66da0f7c0aa157d97ef05409c10f57e85e4411"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.7/epack-darwin-amd64"
      sha256 "7bf2642dd9adb062b425435d49352cdd74c77a665f8901fd2492ef44537e9ccc"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.7/epack-linux-arm64"
      sha256 "955cff7188757709be97fc02d7a12ec48e97338845d22b1770aae5b902fb3e3a"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.7/epack-linux-amd64"
      sha256 "9a28ed8340e21131eba00bf1efc2a7199a385db76608119ac40223d2fe91da97"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
