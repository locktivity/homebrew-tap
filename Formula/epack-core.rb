class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.30"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.30/epack-core-darwin-arm64"
      sha256 "5435c8e21ca05f20de5aa01e31cc48e07e9e4c767da28c360802311c7a564fc4"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.30/epack-core-darwin-amd64"
      sha256 "a86c5ecdf3ccf34c48808786ac7caec6ad0b90b0cdc3010c735ab284576b20a1"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.30/epack-core-linux-arm64"
      sha256 "37c242a263097acd9c354bfdb0eca6db42b7fb412640ea39f24bc92b668580db"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.30/epack-core-linux-amd64"
      sha256 "a2429dfda21c6a39182095de27ca815ab431722300a980c2ad9012220f7cb841"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
