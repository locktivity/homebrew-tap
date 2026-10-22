class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.5"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.5/epack-core-darwin-arm64"
      sha256 "9a48b6db7acd44b297a4060834dacd2ca3675ee8d31cbeec9b0445cc8caf6fd8"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.5/epack-core-darwin-amd64"
      sha256 "0e1782c8173a0501c15f10f6f6c8afaf945743ec9bb87f5faeb3473313c48285"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.5/epack-core-linux-arm64"
      sha256 "63b8ef34978710a66cc621062aa427318ead834222a9e50839f620dce286f798"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.5/epack-core-linux-amd64"
      sha256 "a0b96411fbb294529e7b9bcf37f800f46daeb43ec0fdc3ca41e4508e085f0bc5"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
