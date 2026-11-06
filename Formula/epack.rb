class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.10.2"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.2/epack-darwin-arm64"
      sha256 "04de126bfa2e68524d80f75ed9cc72def9309029e4692d76edb8f6f3dcdbb9b1"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.2/epack-darwin-amd64"
      sha256 "3d38852b3f28aeadc8c0af21902a180a9d9ad610ccba88ebb5cfdad91d565e14"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.10.2/epack-linux-arm64"
      sha256 "3921187d72313b5a51d1d257f05cebf3ad02d761686bd0a81c672a4336175299"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.10.2/epack-linux-amd64"
      sha256 "06c0f518361710a3d136ef8ac6cf18d2fb204623ab754f606eaf9d68fb684269"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
