class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-darwin-arm64"
      sha256 "247ae4e22cb02ac19d71e909f90f8b23af0638262c1073d06d06373fba35bb69"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-darwin-amd64"
      sha256 "fda2efe87bae11ff2a063bfbb13e8ee1acc2f1d1df59350d1149baa5e3593609"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-linux-arm64"
      sha256 "f19523d95ef88c0ee2485b63cace2e643d67e3ad50dda9510d5189938a1b7fca"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-core-linux-amd64"
      sha256 "874d2786a881cd820d44d050e15c82e1d702032665c62fdec7e7971df346f988"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
