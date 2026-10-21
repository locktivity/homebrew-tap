class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.2/epack-core-darwin-arm64"
      sha256 "9841d81f9cfad38274569de08fc04d0ad22949b54c8d13e141dd64451acd6b4c"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.2/epack-core-darwin-amd64"
      sha256 "4f245fffee9aa50d0264fb576709b94e3b9f9e963c4c844faf44838fd7725a78"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.2/epack-core-linux-arm64"
      sha256 "6b5b7f6da32bfeaa399f691fb173e35566657d986aa7ed40f26c680990de0708"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.2/epack-core-linux-amd64"
      sha256 "94f1ccae4f287eb354bc52796b8f649101e522a0f68cad7b0517993b3f465a11"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
