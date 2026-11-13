class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.0/epack-core-darwin-arm64"
      sha256 "f05463fd5eecab145f1241aa0be5a7838eb0ef06a36875e16bc475c9103d6ca6"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.0/epack-core-darwin-amd64"
      sha256 "d099e1ee1b19944f2bd7a7a3830865d6c326cf80bb7143b550b0eab489e65e41"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.12.0/epack-core-linux-arm64"
      sha256 "6741a7b076f1585cb9c861f33ee375bc4c28539bbc30ed74d6ba3abb3d319dd7"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.12.0/epack-core-linux-amd64"
      sha256 "9c2aceafd31dbeae0413ae206296dfa189ee338c2177a8c6eefa1f4b87bfb217"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
