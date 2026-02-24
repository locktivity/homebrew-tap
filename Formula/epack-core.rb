class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.7/epack-core-darwin-arm64"
      sha256 "edbba54002ef32a1e4bacc102d6a113b18176b9dc7e19058f54f9c4166785780"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.7/epack-core-darwin-amd64"
      sha256 "52f805d0ca96c6add06f630a1463de14c58eed5aaaaa195fc59463ec7da997d7"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.7/epack-core-linux-arm64"
      sha256 "ecb5706398b45e211f650aaa9fc12126699bd4a7b0eefcde6ca100e4d3fed47a"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.7/epack-core-linux-amd64"
      sha256 "9ef6e6036358ffee0b82f8e60ae0917a5aba2efd99905ea8429c40848ce5668e"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
