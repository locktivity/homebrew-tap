class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.1/epack-core-darwin-arm64"
      sha256 "b9468d34f69b51cff7775201ef5b7593ea65aa199f616ae25c4833892e8a3155"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.1/epack-core-darwin-amd64"
      sha256 "39993cee286a53328654990c6ddd3c41c005b3b50074f84b45b59ece847560bb"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.1/epack-core-linux-arm64"
      sha256 "64d50d01ded4c74df026d00b1de5ea0e9454b15e968d56f1ce1fafae9fe2176f"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.1/epack-core-linux-amd64"
      sha256 "203721a2dc9e70217fd0506bd85b662fa73598238413372dc92b093c73a0168e"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
