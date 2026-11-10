class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.5"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.5/epack-darwin-arm64"
      sha256 "b3922ebb859113950fd2c48ec5b6eb57a81b2a72d421d96c6c0acf316da53bc0"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.5/epack-darwin-amd64"
      sha256 "819d9b91f5a8a4c5c54c67d319b368c505031385b1e94e13f93c59b43c551314"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.5/epack-linux-arm64"
      sha256 "6449e21807496af4f98be54a95f2c69e8da81ba712bdaf5e5e52417828f993b9"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.5/epack-linux-amd64"
      sha256 "710067a89038a98dd5fc4958c1d417f29db1ffe3083e7c3c9283706335febcad"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
