class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.5/epack-darwin-arm64"
      sha256 "bd1891ade884a5ca70572a568d57132a334f1a12c05b9cc3ae1e5200a82d3748"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.5/epack-darwin-amd64"
      sha256 "f2cd269658dfc534dbe2c1907a418c33bfabc3063abfef488fb5e79027fc1093"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.5/epack-linux-arm64"
      sha256 "c615fc9c2af514b7ce1f4246b191e2075c5c41a423260863d5bf0cd13da4e1a2"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.5/epack-linux-amd64"
      sha256 "9a317a35fdd09c565775fecec27bfc2ef568cf98dc71020f7fcc01298926dca5"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
