class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.0/epack-darwin-arm64"
      sha256 "a991db87ce416af10c2af9a6c5d663330ea805fc6a9d9220a227141091c7e534"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.0/epack-darwin-amd64"
      sha256 "f0154bb497ee6488ba9bdde199f814423c79f6251d71aa401accdccf9fcf9a29"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.0/epack-linux-arm64"
      sha256 "9d8ca7dc3ae10d765887309d0bafea05aea0124a22984e2a5ad7c6bf7fb27618"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.0/epack-linux-amd64"
      sha256 "f67cf2de1b7fe026eb3a99e2600124b5aa56c2711372321aa12be7863a3b12e1"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
