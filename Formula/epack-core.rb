class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.1/epack-core-darwin-arm64"
      sha256 "8b58be9a8b38a4dce65ce38836ec3a25550392b88c125bab6848c4082480333e"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.1/epack-core-darwin-amd64"
      sha256 "43cda87b5bc16a601d4dbbc30355a2f53e23c6b8987d00321f85d006fcd8efb5"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.1/epack-core-linux-arm64"
      sha256 "7e77376956cef093eab13867398b81bc9c6c9b91ce332460328cd884169478ec"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.1/epack-core-linux-amd64"
      sha256 "72c54b2d895d32ef1ce28d74a662efe850377e0c40037bc0f19ba59f5ef48287"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
