class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.8"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.8/epack-core-darwin-arm64"
      sha256 "1146f889bcf3307bc6f3c088f640ff63749dde701e073242d95817ee175cc0b6"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.8/epack-core-darwin-amd64"
      sha256 "628413b6c5e4fd4f739ea482d76ed923d511d4c4acf86b5df849f10105063775"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.8/epack-core-linux-arm64"
      sha256 "1ac5589723a6efda1be938d3dc687cda5610f872fc7c9540451816ab0c428bb0"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.8/epack-core-linux-amd64"
      sha256 "d137a9932226a5a3c53ee0a6d4f49550bf594c90c6f0882ee56b116816ac7d3c"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
