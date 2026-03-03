class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.23"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.23/epack-core-darwin-arm64"
      sha256 "7d2ed86a6777542c59cf37028dd2c6447dacabee57e17e0880e0a4768a0c8501"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.23/epack-core-darwin-amd64"
      sha256 "fd16fbd6ad0ed17c2967c6383c6bcdf544aee5edb89cf781a855d361f15788c3"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.23/epack-core-linux-arm64"
      sha256 "3709ca4b36746e321e85a1fdcae90c84affabbf5a94b9c5f5ee687e4fdd3cd8f"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.23/epack-core-linux-amd64"
      sha256 "5f9808de9ae3cea78fc833c3ae316f7ec8256e33f0c456b02dcacc04c15f1756"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
