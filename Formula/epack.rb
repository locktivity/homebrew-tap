class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.13.0/epack-darwin-arm64"
      sha256 "e45003902be76376b81097c5852224e866cf045f894be826beee8bb8b0fdc8a1"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.13.0/epack-darwin-amd64"
      sha256 "9df5b4752e61b0097865a43cb4ab841dbc35a9bb4571e84af37ef9bd6f08bd09"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.13.0/epack-linux-arm64"
      sha256 "24f62edfa0e32c9d2c05484f8869ef7f10be5e8f670cb0cd35af621e54127cf4"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.13.0/epack-linux-amd64"
      sha256 "d0edab36ccfaa5494af8f04c70e24ae61fba62015aaca75283c77dc9046f23a0"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
