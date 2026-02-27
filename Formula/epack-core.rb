class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.15/epack-core-darwin-arm64"
      sha256 "2a3352db5171afac573a1e8620fa01e36264a706f8929b06bc3b83a3ec7ff5b7"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.15/epack-core-darwin-amd64"
      sha256 "4b9499737d731156eea97b26a2dd4e75d9f2a02470972927ff4473cafae3aede"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.15/epack-core-linux-arm64"
      sha256 "dcc52ed14d65195ca39ff72ed44437e1d53b0b24634e2e3db214f11ad4aa4e87"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.15/epack-core-linux-amd64"
      sha256 "4bfc6d7d2abeca97cf6b1fedfd99b675d0be1fe16aa5ad6b2460595199d7eb7b"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
