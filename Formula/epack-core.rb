class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.11.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.3/epack-core-darwin-arm64"
      sha256 "f65295e183ca3114b1c3219ba0751876995a5c60cf6c60c6eb185f447bcd5cf5"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.3/epack-core-darwin-amd64"
      sha256 "5844e769438c2827f408ee282b8e5ad591eb540b9cc1e6bcde63e83dc7e3b7b2"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.11.3/epack-core-linux-arm64"
      sha256 "7b9d156bc872f75009d7eceb27c56a68f03cf7b8abd8722b0a8f21f18ffd96c3"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.11.3/epack-core-linux-amd64"
      sha256 "a3243d581ed7c4ab3b73e490d84421e0daad55d8b1ebebd828caae58a5d5bad1"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
