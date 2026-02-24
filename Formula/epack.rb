class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-darwin-arm64"
      sha256 "86626f95f05fee36503cfd0dfbaaa692b5e8c6a6fa0c44dd40cc16c69f880044"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-darwin-amd64"
      sha256 "0802c860c288a006d43c98e00a148b100baebe66558e7c5042b25b779779ba3d"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-linux-arm64"
      sha256 "5af8580e533a11c288abbff09b3fde3231f2edf70be896a064ae5a1dd4f3f9bd"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-linux-amd64"
      sha256 "7eee439b44b4e90f46ee5f38860c44bacb9d9eb2f20c49a9ef78693f8ffba63d"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
