class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.1/epack-core-darwin-arm64"
      sha256 "caf3b0857f065a4a8f902dc4fee813801f43c8aa111963dca1fc90817079f110"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.1/epack-core-darwin-amd64"
      sha256 "25f9941b01914aa5094eab52e7ef8e240b929e60f8b3628ef609065d6cf5c407"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.1/epack-core-linux-arm64"
      sha256 "7b79450152ebf8c48f6838f49cd331d1349e1d70b31e740463071786b40f6993"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.1/epack-core-linux-amd64"
      sha256 "107188f2095d7034c83e067015bf3a148a44cbb75992fdf3b1febbe0c70e30d6"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
