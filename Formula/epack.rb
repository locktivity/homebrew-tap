class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.0/epack-darwin-arm64"
      sha256 "fb6a4a67845b678d1ce520a467400d69cc23664763c7b2d08da7c215f7ac0a7d"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.0/epack-darwin-amd64"
      sha256 "c76710677fa76f7a1cd096fba3aeb9070cb481003f8185d4f433eed95271d812"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.0/epack-linux-arm64"
      sha256 "c677f336dd578c0502acbdfc491d7ae6891e3dbc71224213fd51b0d80a6bf3b7"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.0/epack-linux-amd64"
      sha256 "4f75cc04289b249514fd8e31aea4ad6813d5bff7eea9a47aa0e9c20a3da18138"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
