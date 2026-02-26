class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.13/epack-darwin-arm64"
      sha256 "9c10e99a35d99d00d7f9fc3be28cbce78889dff584ae5cf028d56b627f1df433"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.13/epack-darwin-amd64"
      sha256 "844cce5c83956b8729df1da01f5cdeb475877e34ae295342218c3a9a19c99d20"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.13/epack-linux-arm64"
      sha256 "2329d7a92fde56736c3c2ab809df570201f2eeccd3924b448fea2717f2e4286b"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.13/epack-linux-amd64"
      sha256 "d357be4b822f79328127f54c0cdf40be46ce41f3bc31a9998a5a7bf8d4950879"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
