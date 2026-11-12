class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.1"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.1/epack-core-darwin-arm64"
      sha256 "0548848e49084829db02ba1105b83e9f4e2f33aa65c60e918a5388ae2877a0af"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.1/epack-core-darwin-amd64"
      sha256 "f9bb8c9c52e8289c7fd13d061daefc3f5b70e1b7c7dbfad631057034f70678c3"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.1/epack-core-linux-arm64"
      sha256 "bdfd3f6a96be174c0875ccd9d230ae13b4efa2e593e1a9f9a80800c5d0745374"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.1/epack-core-linux-amd64"
      sha256 "8342f59be83f1dd3026a44e4efeea6d656d51b8b0f6ab7cc23e94947bd58cc4f"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
