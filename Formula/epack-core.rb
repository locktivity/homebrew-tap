class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.4.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.3/epack-core-darwin-arm64"
      sha256 "f106c13293b28bce8c10c9309d6f19bdac30e5b4009eceacb0dbf25286d9a422"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.3/epack-core-darwin-amd64"
      sha256 "e185d83f8691abb12dddc6603b11fbd4121c25a1b48e45265e1b2803042b7e51"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.4.3/epack-core-linux-arm64"
      sha256 "3b7d0ba0abe7a2b10607d102ec5b32eeea203165f29368cdbeee1a78d8c6de1c"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.4.3/epack-core-linux-amd64"
      sha256 "3d685d49933806632f32132325c46d379799f70d190e70544c5c26b5565bcb2b"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
