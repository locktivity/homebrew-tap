class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.11/epack-darwin-arm64"
      sha256 "65a0ebb8c6c6b3e141eaf106e9099b25356496b7ed06b056b356ee57526dafc9"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.11/epack-darwin-amd64"
      sha256 "ee44025216f51e77022decec5698499558e7ace6cc6f444ad4674941cf43e2b9"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.11/epack-linux-arm64"
      sha256 "316c9955a6049b2094fea8bf7a57072f2e149256651ae96f71c97600a29dbe81"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.11/epack-linux-amd64"
      sha256 "f3b6e9600f6ecf0e8d7cbec03b117599a4c38da87ccae900c0f43c75b1a7c70f"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
