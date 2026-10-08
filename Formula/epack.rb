class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.3/epack-darwin-arm64"
      sha256 "718761d7f4ed559efd25b9fa46f8ed3d4d6a84f3f96488c4c0b489ba9be64f11"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.3/epack-darwin-amd64"
      sha256 "5b3f07f0898bc6240b1a76e8375b8af4a8c49344e3e1f30f31130aeac5a24c63"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.3/epack-linux-arm64"
      sha256 "11540ddf93ac02956ddec7582dcffcdd0c0aed4c9268a7c07009bfce9269591a"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.3/epack-linux-amd64"
      sha256 "7e6eb63651bb5dddd82d4d1b888b171db658555d424ce21e4715ddb96c6480fd"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
