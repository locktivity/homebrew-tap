class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.14/epack-core-darwin-arm64"
      sha256 "eaaa8debbf124497e7316a9dbc84939dceedc4fa3dbeace3cc82c70c90af7a10"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.14/epack-core-darwin-amd64"
      sha256 "2c3e5564d579076c9202622ef0c16d454b886d7fa9b40cbc152de1df1f3bdef3"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.14/epack-core-linux-arm64"
      sha256 "34ed4afab5df9fb1c04e209404d3e00144aec9537370f35689fdb633f8ad007f"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.14/epack-core-linux-amd64"
      sha256 "a52f6ff383f41371ef2fce246f694d163c3f2af866592bd87df16a56d7ef9485"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
