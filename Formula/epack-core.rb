class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.9/epack-core-darwin-arm64"
      sha256 "349441060bf435669d75b2f150096fa0e8f6c9d1dd0fae4111867e6083b31cfa"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.9/epack-core-darwin-amd64"
      sha256 "f4afa32466ff42406497bbdd071b2a1d030b42c275791117182d989101f6fcdc"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.9/epack-core-linux-arm64"
      sha256 "35e63ef7b12c84bb410df5826ea9ec166e0bb5c4dc654d6eea3cb93b1864115c"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.9/epack-core-linux-amd64"
      sha256 "7c12991a365089b3b8e017c762bf894caefa7b63dd22057e6bc234af5cdfa674"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
