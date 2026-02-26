class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.13/epack-core-darwin-arm64"
      sha256 "892b47f73efa17083a86c13de89a424a648d5fca9717191879a539e523baff39"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.13/epack-core-darwin-amd64"
      sha256 "98eadc6db67028a4c1c1a27972d2778b5ff5b1b78fd04ff7b059d176e0ad1abf"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.13/epack-core-linux-arm64"
      sha256 "1710d341cb2d918ff1bc97ff09aaa3cd9090c2796f1eb60090510daa774b4156"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.13/epack-core-linux-amd64"
      sha256 "7782be3bddb88a3a3265b6a9b6d230d6dea0840e900b9ca2245bff9a0e37e9ce"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
