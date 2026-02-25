class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.9/epack-darwin-arm64"
      sha256 "f7dafb2a1414966865c2db9a904aeaaed6d7087222351be0368f76cfd84e47d5"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.9/epack-darwin-amd64"
      sha256 "968fdd7d2be22209aadc69b7b9a3ee439794e734c0c401306225f832fd79729b"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.9/epack-linux-arm64"
      sha256 "0be4b0559c8e74a4b27a31f705837a5695a8d2345a21b20237e7b8ff5c175b96"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.9/epack-linux-amd64"
      sha256 "44620f03086d7b5fdc502a196a7d11e2785ee01baa0b074bf0bbf5240ad98cee"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
