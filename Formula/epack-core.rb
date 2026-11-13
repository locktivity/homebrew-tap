class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.12.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.1/epack-core-darwin-arm64"
      sha256 "fafb2d47f6441b9023b068961d5af62a9b94a671d911a8a581575956ef20a031"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.1/epack-core-darwin-amd64"
      sha256 "16b51ece9b6c905eee1a25a780899fecb0c07e6d911db95b54b64fec864f8dea"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.1/epack-core-linux-arm64"
      sha256 "8c0c6fc9643a7982c5a0e65b0e69d60df0d8dc357e428bf448782bd15480ac9f"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.1/epack-core-linux-amd64"
      sha256 "7b7f52e47acac102c7c0906182f9dfcf8b8d106552d4d703fdb656de43b6edcb"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
