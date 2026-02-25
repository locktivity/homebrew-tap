class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-darwin-arm64"
      sha256 "b4d52ff200d9545ec6b3fe35ad9f0780ae821c0a57713c98ab8516cf6683658d"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-darwin-amd64"
      sha256 "212cff56b8d2b265ee6ac7252c8ad6c326609f2958db6b7348f532e8abac976d"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-linux-arm64"
      sha256 "32a9d331156f4906e529eb4b970af654ed9b99dd20f0f2112daf9c663b9a4eab"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-linux-amd64"
      sha256 "3855f22829e95b1bbdabc6359133b93159e5a55e8e2267ec9103467d61140831"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
