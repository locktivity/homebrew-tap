class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.18"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.18/epack-core-darwin-arm64"
      sha256 "d57fa8b916d118135d10e3018429023fb4411bebe309f84f75aeedae927c5ec1"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.18/epack-core-darwin-amd64"
      sha256 "90c7a246378b0bef837a693bd66b0f7c4752f71506398a23ace8791741e81a3e"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.18/epack-core-linux-arm64"
      sha256 "d74b33a8ccb9d96e4db823f674ffc2bc7b02683064296d8a5613b05461fac4c6"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.18/epack-core-linux-amd64"
      sha256 "9475b7677b35f801aee6c71ac0e0c15a2c65d83c134e5fd3e7725f0140757528"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
