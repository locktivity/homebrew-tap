class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.8/epack-core-darwin-arm64"
      sha256 "c8bf085a1ebaf42682872db57a3c9250910a7fd1c0d149314205f8ea5677c8c0"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.8/epack-core-darwin-amd64"
      sha256 "b6d20443479b00c917c85c1f8b9a73ed276648511e780ded3f776bd298e01df6"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.8/epack-core-linux-arm64"
      sha256 "b3ac15f030d76ad3d021f9455967bf2a505684e45c97c33c518a3e1007e51b3e"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.8/epack-core-linux-amd64"
      sha256 "f8b0773432c77e1846aefe1176c69a175471e1c16760cea0d6111ebcc458c434"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
