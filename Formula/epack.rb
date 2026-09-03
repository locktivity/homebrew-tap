class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.2/epack-darwin-arm64"
      sha256 "f163a1bf479b8975b1cda16f40175f514b7c20776fac1ca12340816c4997a192"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.2/epack-darwin-amd64"
      sha256 "9910b8f146c39a26aeefd8336554e263fb4d4999a6096ae8695113ee3db5e1b0"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.3.2/epack-linux-arm64"
      sha256 "c4100ce7ee3647cc6827acbf4537121dce3352ea5b1f809aef73886f9315d069"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.3.2/epack-linux-amd64"
      sha256 "f94bef0ace334b6fd91b7b3e8804bf8ea4f8ba8ec12085419993274cc59ac29d"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
