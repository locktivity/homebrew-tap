class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.33"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.33/epack-core-darwin-arm64"
      sha256 "e85bc5faa17242ec6aab821594a637a2d566dfbb567b157c4d4cec80d7746a6c"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.33/epack-core-darwin-amd64"
      sha256 "448a8f0caa3cc05bfcb16e226558abde45456329f92b85dca461a84639f19e4b"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.33/epack-core-linux-arm64"
      sha256 "fb562762522accf3d952ed12afd61edb44f135082ffa0595c3d3805d48fc84ea"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.33/epack-core-linux-amd64"
      sha256 "49704d5888ad12dfdf71c83ca96fad47f5edd6e8e4e7d5483879496e27539a71"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
