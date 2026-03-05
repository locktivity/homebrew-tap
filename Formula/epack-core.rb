class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.24"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.24/epack-core-darwin-arm64"
      sha256 "939e22f22963da3940f81def009e8d4fc58e6610442eb97f4d0d2256ad9c8b9f"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.24/epack-core-darwin-amd64"
      sha256 "e8dd52d15d9d13b335fe022f75b9fd07e6dab9290364c159ca593bcf0a24573f"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.24/epack-core-linux-arm64"
      sha256 "e5925d04316307f599eca44a1645a4cbcce59e68b8f0871dd931fbde2230fa98"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.24/epack-core-linux-amd64"
      sha256 "0a191d1f23a7cc86491a7ec7cdd4469cd103b45356d18efb704ade8c1da04ee9"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
