class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.32"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.32/epack-core-darwin-arm64"
      sha256 "3ed61408d25dfd74b6dcb167ff1afacf3791eaf91734e35c7fb79bb11b480b24"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.32/epack-core-darwin-amd64"
      sha256 "a9f2c36912acec4860bc52c0fcdc40362bd546a54e3eb21d97f14a5d3f0f95ed"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.32/epack-core-linux-arm64"
      sha256 "6bde736da8266f951d9bc32c524bf73189702893cc0a2222f098a4782c68ae9f"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.32/epack-core-linux-amd64"
      sha256 "1b23cb895a347b3fee0abc5073163b44ca24ea4863bdcc58dd9466d73b05270d"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
