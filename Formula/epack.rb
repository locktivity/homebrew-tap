class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.6"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.6/epack-darwin-arm64"
      sha256 "645139afa4e17dd06aa0a2388ad3ecd6c5b99e438af00654bb5246c600a4978f"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.6/epack-darwin-amd64"
      sha256 "f9618f663132190ccc05357e4c2f1595e30a0318597998c0eecbb921a0c37f48"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.6/epack-linux-arm64"
      sha256 "dd2bb6604e67202ab9cb4c4bd10d1789374dc30a9d1eae2f63d508f56c365b35"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.6/epack-linux-amd64"
      sha256 "0e962d203217d0a9facca033678d67b4872e0221d66ef10eb991dc16b4b04ba4"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
