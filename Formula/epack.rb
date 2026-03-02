class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.22"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.22/epack-darwin-arm64"
      sha256 "d9dc2f41a833465ab952e71fce8e520627309e6971041975fc32fe714dea28db"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.22/epack-darwin-amd64"
      sha256 "9513f138914400bdc5c3dcf5e89856f2867d9cbf562545143c3b09e43ff267fd"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.22/epack-linux-arm64"
      sha256 "f6bbd0e7d761ee6f2ed83abd6d4d05e11f30ab6e41f44c59ee687eef58c0d436"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.22/epack-linux-amd64"
      sha256 "21b7acbd4f0afc8d4358bf94398466bf291c674a084f5739d5e7574a0ac95869"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
