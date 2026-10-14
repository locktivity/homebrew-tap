class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.0/epack-core-darwin-arm64"
      sha256 "9690b4d35ee7f932c4db3dc98b515397560d2056b4b464c13faf4e9da87d4a78"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.0/epack-core-darwin-amd64"
      sha256 "813b509d9e6393e5eb87a8f3a558062a4190acbc195d4da6222b2b6011fbc5a0"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.5.0/epack-core-linux-arm64"
      sha256 "eca7db38111ada48cfea0d7dcec6bc56a692bb83b0921516a143afba75f8909f"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.5.0/epack-core-linux-amd64"
      sha256 "717a09fc16119f6ae4ebc394d519436e4d1c02f6fbc7448b55b67c966b09d152"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
