class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.0/epack-core-darwin-arm64"
      sha256 "6d3456d0052cd944a40a47dc2d400ba720bdd4b7c15ebb97c9d55b46ad5c3903"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.0/epack-core-darwin-amd64"
      sha256 "92f055bcdae446e01f383a2eaabc4e691997804573de27508fb3097bea560adf"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.0/epack-core-linux-arm64"
      sha256 "d8c3d1b0083c658b912bd4bcd8a57f08393ede2d01db424e753fac049a5a37c5"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.0/epack-core-linux-amd64"
      sha256 "3fb1170974e730234d2b58fc5ad9041aca0afd2289ab8a5bb1cdae55bca8cfd1"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
