class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.5"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.5/epack-core-darwin-arm64"
      sha256 "60348d1c798958f680104cf420f2d6fe02285897b7742c48843e5712fd3a7d5b"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.5/epack-core-darwin-amd64"
      sha256 "ca424f4adb381fa30fc49b1218a990edcfe600adaa50e15ec5ec58bfdac418b7"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.5/epack-core-linux-arm64"
      sha256 "8f6229f5e773322dfc5bd7d889b7940632e3d0a68335107147affd3c0a5c6bdc"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.5/epack-core-linux-amd64"
      sha256 "3fbc4ec3e503819e8987907c656a4ab09fe70322d444336acadd9ae9bcb35c1d"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
