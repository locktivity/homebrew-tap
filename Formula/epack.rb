class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.7"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.7/epack-darwin-arm64"
      sha256 "fa70fe20a9437e4c7491a4f4fc6cb6355817ec34cdff37ab2b9d4a8a3c8c562c"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.7/epack-darwin-amd64"
      sha256 "4a503340c345685826d1cdbb76f5891e37f5fb8d4a80651d639639080de06343"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.7/epack-linux-arm64"
      sha256 "9a16a83c94fa766e34b332ddc110e9011b9bc061a633a2fe55bbf7b64956fdc0"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.7/epack-linux-amd64"
      sha256 "384ff842ca9ce43a30abd59e2a3efd2232ccefd4ea3a1f9ae1a2fd3fb68a8a54"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
