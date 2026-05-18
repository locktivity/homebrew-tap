class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.33"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.33/epack-darwin-arm64"
      sha256 "f4ad36ba037273d51a9dfd40168de19d3bb93985aad486adbc04b47f3ebdac42"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.33/epack-darwin-amd64"
      sha256 "9c7f60f0cc334f94df20447c548b1098f20a8295bcc86cc0b712775ecd65b63d"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.33/epack-linux-arm64"
      sha256 "d53d1dbbef1457fb63dfa81fe1738593fe30d1ab2aea0c30251d48870bca8733"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.33/epack-linux-amd64"
      sha256 "5f00ee2e3564df09391890647a3340d239626b7324c843c60db8fd7e6c096b12"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
