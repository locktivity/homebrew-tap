class Epack < Formula
  desc "CLI for creating and verifying evidence packs (full: components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.31"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.31/epack-darwin-arm64"
      sha256 "6794a301320db7928bea4bbd8005d347af7f4db71620cd83834c1d487454cddf"
      def install
        bin.install "epack-darwin-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.31/epack-darwin-amd64"
      sha256 "263e87ad8eece9db216e0655315d0a847d497326854fa5e3bfaaf7df4c97fa16"
      def install
        bin.install "epack-darwin-amd64" => "epack"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.31/epack-linux-arm64"
      sha256 "4badb95934f0167c74a9de8bccb306350951d0e482071351d33dba8e80d07670"
      def install
        bin.install "epack-linux-arm64" => "epack"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.31/epack-linux-amd64"
      sha256 "17af90ff9efafabde139273692c8711717eff95fe87ef81dd8a6cc4c8a8ffda2"
      def install
        bin.install "epack-linux-amd64" => "epack"
      end
    end
  end

  test do
    system "#{bin}/epack", "version"
  end
end
