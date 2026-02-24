class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-core-darwin-arm64"
      sha256 "4c7d190dc98f18dd50f93bd1a389726129a2a34e3526ad167a33d3a6bb9dd4cb"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-core-darwin-amd64"
      sha256 "2a3d75776bb4fb8860828326fbc4198e0f0c13651bae211ddb6f963005e76f1d"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-core-linux-arm64"
      sha256 "3a5ea96a3bffd8abba241140703b17b97bc6af0fec5f46fb9e51b8ad21cca987"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.3/epack-core-linux-amd64"
      sha256 "a89943436c683de105d9d7bae4d74e672005e2e710cb06a8c8eb973c7680bd7c"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
