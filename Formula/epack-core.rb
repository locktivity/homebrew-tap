class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.29"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.29/epack-core-darwin-arm64"
      sha256 "586850808a4544d7da5301a3812629a16184a0b5d1699379f96c09e809fec224"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.29/epack-core-darwin-amd64"
      sha256 "37058e84bbcb58178dbc9ca63bf8dd8b25fba6a4d8ed5ea40a593c9cadd01980"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.29/epack-core-linux-arm64"
      sha256 "83371e1d57a50ffdffd39a41e45f0abb201f4a961f38a8f7484b0cd9cd723aa8"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.29/epack-core-linux-amd64"
      sha256 "a89c2ed7e6d9dbc7894baaab3efbf46ced90f34fcd222f7182d9c0f4e7e41671"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
