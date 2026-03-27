class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.30"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.30/epack-darwin-arm64"
      sha256 "ce7dcb40923a355e521be04f8dd79469f91a335e9622c99c684d42d7f93e3b33"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.30/epack-darwin-amd64"
      sha256 "6c57b91796024f3b4662855ac52f6d73047fa40c741815ad7947a6c83be5eea3"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.30/epack-linux-arm64"
      sha256 "a3b7d8423777dcfe5b9b014baaec7e65aa7ab91c2083811c9b6ceb6963063277"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.30/epack-linux-amd64"
      sha256 "5ff1598adce71f35e73d415723438d46e17af6139917722961450142485384b2"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
