class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.4"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.4/epack-core-darwin-arm64"
      sha256 "225164b397d7e5333f04b2f05bca17145c4db090cb122b21b2814a93e7c4ab0e"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.4/epack-core-darwin-amd64"
      sha256 "57739a69b452c10409c0dcb02f1fe8fb9ae9986140625ac35cd01eb89580b49f"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.4/epack-core-linux-arm64"
      sha256 "77b34ab91f0eb70e2644c78960708c253856aef2761d2063c780e566384d89d0"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.4/epack-core-linux-amd64"
      sha256 "89dfd821b4afcd57a581c479f140d38391dbc26af97e1b4211eb574b59c54b7d"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
