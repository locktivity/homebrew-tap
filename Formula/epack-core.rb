class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.28"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.28/epack-core-darwin-arm64"
      sha256 "042999222aeec19cc44c6a73715acc82fa17218aab9dd1cc9f4083cbc55bee05"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.28/epack-core-darwin-amd64"
      sha256 "0138a13e06565028e37fbe5103c003a85b228d5d32a386eff8a2d8b400b8c036"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.28/epack-core-linux-arm64"
      sha256 "b4a7a715db667c46341e86a3aabb11606f906d60626a590a8085b97cd33c29bf"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.28/epack-core-linux-amd64"
      sha256 "1bebb8335897d53d572db94a60900f1f228c2467780ed759d5605188930c1bdd"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
