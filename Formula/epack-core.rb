class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.2/epack-core-darwin-arm64"
      sha256 "6c60e936030299ef390d4a4dcae25dba79e4ca6abc4f3a30104f1d66c721047e"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.2/epack-core-darwin-amd64"
      sha256 "3815b9f60230e9d888d7e5ada574e9a0095f220662aff153ace6b5dbd7dbc56d"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.2/epack-core-linux-arm64"
      sha256 "43b49180819999e254fff601023560152be2eeafb667bb2ab1291bc60394dc86"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.2/epack-core-linux-amd64"
      sha256 "6bdad29d29ee8a499246e6b0ac4cf1e46d3fa92b891d17602c09cad585b0daf6"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
