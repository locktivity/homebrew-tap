class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.6/epack-core-darwin-arm64"
      sha256 "294585a4819f30eaf5a8539e7afaa4489d3042c10d16374822bf919011acbcf4"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.6/epack-core-darwin-amd64"
      sha256 "09d46d8b9f89a48c70d1bdb4df735a844809a84158f70b486862d0e20d83b445"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.6/epack-core-linux-arm64"
      sha256 "e191a87779883439215f64e65eec162afac7c54e481f466fadab6dc269736452"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.6/epack-core-linux-amd64"
      sha256 "a79c6fb4bb805ba6f5a5a8d7d7a0ef1460de79d2b112639094d34d881515a1dd"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
