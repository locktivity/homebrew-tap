class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.0/epack-core-darwin-arm64"
      sha256 "397b968576955e9b9d9c835b909cb0f3be978f2d18360fb1d6be8361dcce2883"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.0/epack-core-darwin-amd64"
      sha256 "a79f3594a736f00bfa7f0c6be9fb3353ed47d6ef74dc1b24182b2b642d61d281"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.2.0/epack-core-linux-arm64"
      sha256 "855ef53219790a4fe176c9b9578a447b491cda5df3521f2571a95cbd8ad5dcf7"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.2.0/epack-core-linux-amd64"
      sha256 "4fc5709b588c65e704c423a31c5d7e754263fa8297fcced3771b5ad438a57cc5"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
