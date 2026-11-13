class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.4"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.4/epack-darwin-arm64"
      sha256 "ca08f1daf727a15310cd6934afb0dc21ad1ce21445b63a66f561f8c18ef48453"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.4/epack-darwin-amd64"
      sha256 "e29d6e9c17dc1b38fc3e8520a2a4e525a5c8d08782f1559cb397c50723030a1c"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.4/epack-linux-arm64"
      sha256 "1fe44a149a232af467ec05298f65b11ca039ef57158132248bd526e30a46f137"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.4/epack-linux-amd64"
      sha256 "f13722f784439961896d3e66317b358cea41d83350d8aeebfe504886bb82d6f9"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
