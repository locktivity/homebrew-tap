class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.29"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.29/epack-darwin-arm64"
      sha256 "a5678519a1abd8520cbf8beb161b37023cf833a8406fd58eab58bd211e4fcfb6"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.29/epack-darwin-amd64"
      sha256 "3a08c4efe341d65b5a18b45d39acca87e2f4ae2eabb14bfe552e1aad6ef3d8f7"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.29/epack-linux-arm64"
      sha256 "af9944ca8deb4f5c9047188bb5bda810f32020c9f6159b178228c40aa97b69fb"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.29/epack-linux-amd64"
      sha256 "eb2fb5f4a3eb0377f2313107a3244109920811199e2665908b8ecdefc48f7ad5"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
