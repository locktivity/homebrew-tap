class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.4"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.4/epack-darwin-arm64"
      sha256 "0b9c381d59c1d86a1e1bae8b35d528b1387a4cb87faa86da1361bb67f1fa6046"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.4/epack-darwin-amd64"
      sha256 "5611271d7ca9bbce80a8c23d4733164e73574ab1bcfca6a4d6353c37303b6858"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.4/epack-linux-arm64"
      sha256 "16dcc89da1615f98f07b530f0c7005f0eca454714096d2449bc1b746fc647797"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.4/epack-linux-amd64"
      sha256 "8da0cabfbce7bb603a863443d2b0096978a797896da2922a0a153c1719534238"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
