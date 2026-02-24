class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.5/epack-core-darwin-arm64"
      sha256 "dbaa8e6922da4fd4d6b88712d28a2c286de714aef88ac566624071aa0e4da1ec"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.5/epack-core-darwin-amd64"
      sha256 "112dc3258109ec170bac4e322d328f7ce028a506144e70b063ca56c02cae2b01"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.5/epack-core-linux-arm64"
      sha256 "53f6446cb42555f3f5f08a8c57a16eafe0a447c5156319da060d7aac3344a2c7"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.5/epack-core-linux-amd64"
      sha256 "d2bb31de7b90074dcbb760e2d462ff5b94b28dc6cf6310ef112c89684c28b9e2"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
