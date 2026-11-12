class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.0/epack-core-darwin-arm64"
      sha256 "e7b1dcaeec9b84bd1843a78d9f2d2ecd1a4ee9f5edf23ef6ad89993b074dc7f3"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.0/epack-core-darwin-amd64"
      sha256 "1c6fd4e0eaa106711c566af5865a80457a5a1abee0efd0829140b0eee12a2672"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.0/epack-core-linux-arm64"
      sha256 "f6446fcb0a0884b7add3f303036c3960ae4eb23976cd6ed664de0cc3e264ec42"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.0/epack-core-linux-amd64"
      sha256 "feda6a821214b74f2ea56d766093e1acd099824ea3b2efc4328127f76f247145"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
