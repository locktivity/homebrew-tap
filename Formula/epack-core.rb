class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.6"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.6/epack-core-darwin-arm64"
      sha256 "ab0b9fb07569d347d0cd901c264dd4b4c41e89cb530d168f273f75a4bb60cdf9"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.6/epack-core-darwin-amd64"
      sha256 "bc02dc3165f0d154e2e4edf6188c955dcf6096e4cf0fa8b52afedbbe243bb22c"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.6/epack-core-linux-arm64"
      sha256 "38e8e613f58615610fa7fb79113be72d2351d603647615185a33c29254c531a2"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.6/epack-core-linux-amd64"
      sha256 "a816110dc52e4768119613e072d9ebc792334864617acf5f1422725bee4c36ea"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
