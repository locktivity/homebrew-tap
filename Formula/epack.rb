class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.8"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.8/epack-darwin-arm64"
      sha256 "0648f751f16cf7906d2ef61fa5fe01f21922d73e87abb228208e6f963a32ec9e"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.8/epack-darwin-amd64"
      sha256 "b72d2ac66891b28522e5a8eae7a3e4476230cb5e1811dc58bf2ebb9a3fef34c0"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.8/epack-linux-arm64"
      sha256 "bb9b9a26426a0219ccaa168a058eff95cf3863d570c9e007953bacc1535f23e4"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.8/epack-linux-amd64"
      sha256 "e5b438097b387beeb3775a89bcd20083aae1e907a14e6aae0adf14fe343b00e5"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
