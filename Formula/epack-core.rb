class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.22"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.22/epack-core-darwin-arm64"
      sha256 "e749bfbe0392a736b2dce7ba0d3b3bcb19614607abd82e611948d0ffde328c5b"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.22/epack-core-darwin-amd64"
      sha256 "db8e5911b818e6f2bda0e4f1ab1a851448d32decacdbbdb7a624d16c0e873fb0"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.22/epack-core-linux-arm64"
      sha256 "2f640ab103f11e9f4d30cc3a2e5adfccbc43e3337d153755becdff1fe201b2b4"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.22/epack-core-linux-amd64"
      sha256 "f64f8b43bab62654a4608a274cbaa835a00bd886fb85b885a16ff8b4cc99e684"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
