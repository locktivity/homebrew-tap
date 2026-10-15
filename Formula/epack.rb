class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.2/epack-darwin-arm64"
      sha256 "8485b61deb02ae318667e435a695dc3faa8a15da4140a95d367f574677e0012c"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.2/epack-darwin-amd64"
      sha256 "805211d0cee966853f622e224bdab7b9e19a8ae0f37bb3b12f2ed689b6c521f6"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.2/epack-linux-arm64"
      sha256 "b9a21720f4780ed4927f55a0defac606c4e04177a2d3d641821c9d18f42e274c"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.2/epack-linux-amd64"
      sha256 "e796cdc30bc5eaf3a1166e6d5cd5290ef0663fa335cf74fc0da37ee0c6889e54"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
