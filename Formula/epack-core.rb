class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.21"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.21/epack-core-darwin-arm64"
      sha256 "bb01978006313400d32227b5d0992c6320d848c2d7ff189c77c51d4f8bb945b7"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.21/epack-core-darwin-amd64"
      sha256 "5509b93dc7a976390d6c571eab94efc7d0a70c09665da4570c13068ec8d3fd0e"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.21/epack-core-linux-arm64"
      sha256 "15d6f8713ffe38f858e544e0c77653b59d73cedc589203a84f4c9c5ea19cd8e4"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.21/epack-core-linux-amd64"
      sha256 "661bf65e4a70eccd1fbddab2baf78c018a4cfc32d983875607b17aebeb26a8a3"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
