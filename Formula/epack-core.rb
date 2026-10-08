class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.0/epack-core-darwin-arm64"
      sha256 "a1b63c7c93efaf911bc844b2acb1fc1f8f8431b3b0063ba5981f8f0fa475fd0c"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.0/epack-core-darwin-amd64"
      sha256 "f1cc15c3079ec9b5968a82fb3ab61e59c0e112fcd433fdec0fa7963187c50178"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.0/epack-core-linux-arm64"
      sha256 "4f3e0a9af04795fd43120e19c6e888665a57ed59c28260546dc59b4f47d66808"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.0/epack-core-linux-amd64"
      sha256 "a375d201095bcfdbd2f3882df7558e67648ccb2e18aeec5db7110a2f4751fd4d"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
