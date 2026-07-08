class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.0/epack-darwin-arm64"
      sha256 "20ec7556011989a8fd2e7186de36c973260077dd4a6d0276868d4d16d165f910"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.0/epack-darwin-amd64"
      sha256 "0cab003558d94a5d39b2d3ac37ac88666ebebf70b4e55babd7aad2074249f2f7"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.0/epack-linux-arm64"
      sha256 "d513f4837cbea709866eaa4b0ebb1f607f5fb9b8507ede8b54e3501e53d1c779"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.0/epack-linux-amd64"
      sha256 "ba8333e46cb0bb90068a215c1a643910ed6825f36be5e8846f1e6fc91dd0db91"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
