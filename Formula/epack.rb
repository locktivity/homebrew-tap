class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-darwin-arm64"
      sha256 "7348daf3fcf577e48acc95337b03d70c8bbb0d49445d51ab0bbe6b83efefc9e4"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-darwin-amd64"
      sha256 "9b412a40b3f2cbec098bf673b21e793ed842eb64880a05f9df5aa074bc1b8380"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-linux-arm64"
      sha256 "6e38ba9cc128cd8c7e34750178a8ad09ecb855972818c51a2c488ab8c1727395"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.0/epack-linux-amd64"
      sha256 "b53ce884b3ac834274467266f03f48a3da36067a658ab8908262c2f633c60832"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
