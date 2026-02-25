class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.8.0/epack-core-darwin-arm64"
      sha256 "88fef23516c89ca2b73851f9e5c337053c00a72d57ab0e4b61407709934c1b3c"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.8.0/epack-core-darwin-amd64"
      sha256 "e6fc50229f868210fc836756e3ef060692d2ee3e099d2323f6385b6b8eb8fbbe"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.8.0/epack-core-linux-arm64"
      sha256 "893e50afc01a92eecd6618a1a2d97c8af7e35c526a7d9fcccf271630baa6f463"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.8.0/epack-core-linux-amd64"
      sha256 "495918da7634f5bbd2fd6443bc9b5c62bbe175a46049b872fc9ffb71d40f27ce"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
