class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.7"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.7/epack-core-darwin-arm64"
      sha256 "7d9c21b56a611570d6d55e8b0c034ec374c236ebef797f1d1ea73c7403233390"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.7/epack-core-darwin-amd64"
      sha256 "534afdbcb1e2a8f3439ffcac7e138300ade362e91551263cf40ddee85109aac4"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.7/epack-core-linux-arm64"
      sha256 "f523108eb0e2fe51bd5a0f3196e1782a4d4adb49c403a650206b306154249eda"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.7/epack-core-linux-amd64"
      sha256 "9eed881f10379b66ca88e557bcd951f7e997fb532f9fc8343977e4e13ef1baf6"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
