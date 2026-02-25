class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.10/epack-core-darwin-arm64"
      sha256 "bab1aabc51dc48e112a7d0d56780b09dcdbdc71499630b00b1453465612e0016"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.10/epack-core-darwin-amd64"
      sha256 "bb9f4fb14184af34000e88b1378d833fdd5abf18360901b805ede854b4d6e1e4"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.10/epack-core-linux-arm64"
      sha256 "831abde3b5a446d0c423baff599eb207e68526c5d4913fcf7cadbb07917a847c"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.10/epack-core-linux-amd64"
      sha256 "5170675a2e0dc155fc186ff45b8001cccf73a84296d1e7bfa9904c990a22d330"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
