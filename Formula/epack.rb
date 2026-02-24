class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.1/epack-darwin-arm64"
      sha256 "9d046c356540e2170bcedd0fe5fc6cc7c32290d794eabb705de098ee11e296f7"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.1/epack-darwin-amd64"
      sha256 "48b894a1920f79463697e74a9badf3099ff52dc1ea4b5b136ae13666f041239e"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.1/epack-linux-arm64"
      sha256 "77ff15bb97f452c5c9d325aca5dac09644917a2ef94ad981fa46a2e43e657748"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.1/epack-linux-amd64"
      sha256 "4089755304e36e3d4b8898f7183da66b6af853f5d469566c5a497a23d14cf70d"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
