class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.2/epack-core-darwin-arm64"
      sha256 "53ccb336b8c63b3a8f3882a885cd175f74506110819dbcbd83c3b11d7034652a"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.2/epack-core-darwin-amd64"
      sha256 "073382d60c1122cdfa78e87639aaee709a0d346f587c26af8e0d4fd3fd927f24"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.2/epack-core-linux-arm64"
      sha256 "923ab135dc9d98595aafb2560ce3ee3507f3b6da9385358bf7e65dfb3f07ac9f"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.2/epack-core-linux-amd64"
      sha256 "cf46ed139ec571d5cee2819e0f6282d4d6128905daffda81cd584dc6db0a3213"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
