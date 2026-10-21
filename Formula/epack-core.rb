class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.9.4"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.4/epack-core-darwin-arm64"
      sha256 "2faab291487ffc463aa40a810d94d614d74bf36135f3ca1eaf462e86327ee449"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.4/epack-core-darwin-amd64"
      sha256 "ff95f28308e17e0ba37fe3b62339e2154dd15d29e7fbe37cb700649c9a2ed551"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.9.4/epack-core-linux-arm64"
      sha256 "7fa4cac23cbbd0de638b176959f4e35f5e614074cc25bd0aaf3be9645b626d2a"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.9.4/epack-core-linux-amd64"
      sha256 "8a3d72670c58534bba6c8e642b82448649d1c35cbf4247fc2cc088df178117b8"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
