class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.0/epack-core-darwin-arm64"
      sha256 "da8ad9b33feb6dfe1fdd556f15dd4c08a259cde3a3dd74948ee226b8fded18a6"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.0/epack-core-darwin-amd64"
      sha256 "eea80c17491bb7e5f62f9ab99843c567b3d6d43f371c648661c76a7988069120"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.0/epack-core-linux-arm64"
      sha256 "9652da875a5048fb1cf2beaf4117a1f8f8c5033cb3cb7618cf1f8a153f17f673"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.0/epack-core-linux-amd64"
      sha256 "5ab0408bf5ed1cac54c7f76713a073f059d2c42aa9f97e155122782e1810df1b"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
