class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.0/epack-core-darwin-arm64"
      sha256 "838464126ec27b4877d7e5c15828718b5760b6ec2636db66281b9e9a6da8ef3b"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.0/epack-core-darwin-amd64"
      sha256 "f658851805c234cde4f86f8d05660d56c0f589cc6d599cc52f02dc1b85ac4992"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.0/epack-core-linux-arm64"
      sha256 "1d8db38a85f0f3f0681c28e8ddd77cbd870d0a9b411e9c7a0e952d4bbfddb913"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.0/epack-core-linux-amd64"
      sha256 "98ef22d3befdbc72f6f85ff17822ad76cef56d5d1092d813a298509e527451cf"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
