class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.16/epack-darwin-arm64"
      sha256 "a69e17c70e621a708b2148ef2b1ecf3dcbf918233c2257c4705de0e49c83ec0e"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.16/epack-darwin-amd64"
      sha256 "b27817cbf0643d4690a1cf73b356c22457f23e73d7dccc370c1d7f26065500b5"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.16/epack-linux-arm64"
      sha256 "550e3ce5a4987b1e763191109c37c10d3494814d7d313bd65021534f10f47c13"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.16/epack-linux-amd64"
      sha256 "5eb1add7da06bd8762051a789417aa9db17cfc4a3374685e2c39c2e3aa5ac95d"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
