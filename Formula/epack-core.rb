class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.7"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.7/epack-core-darwin-arm64"
      sha256 "088dc7052625c89f3f5b675ccaa7ef5f61c7b18d83a94e8c9653ee7aca6b6f19"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.7/epack-core-darwin-amd64"
      sha256 "e16d497c5fd0f79be9cbabb47a69ceac46f2798081dc4137f2776ac70fd9bc40"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.7/epack-core-linux-arm64"
      sha256 "667460657b62807e4939dc6aa49df72799fd22f2fd4da461360052cd4fb95210"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.7/epack-core-linux-amd64"
      sha256 "f12240ddcf2276d9ee81e85e2f8fb9e8cc7d7ca020700ef12575654123f07bd9"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
