class EpackCore < Formula
  desc "CLI for creating and verifying evidence packs (core: no components)"
  homepage "https://github.com/locktivity/epack"
  license "Apache-2.0"
  version "0.1.19"

  on_macos do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.19/epack-core-darwin-arm64"
      sha256 "99e1605c80c6c2d99c4601a19090f02af4c534bbce6d9f2b770979f2583638e3"
      def install
        bin.install "epack-core-darwin-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.19/epack-core-darwin-amd64"
      sha256 "8064f9a9ca42200546121e10cd12479b8d34458a32b4566ca0fb65acb1a08720"
      def install
        bin.install "epack-core-darwin-amd64" => "epack-core"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/locktivity/epack/releases/download/v0.1.19/epack-core-linux-arm64"
      sha256 "d2e9153d6ea36195c1a1e1ab369c9506aca8989c1497f971815daed63adfcf16"
      def install
        bin.install "epack-core-linux-arm64" => "epack-core"
      end
    end
    on_intel do
      url "https://github.com/locktivity/epack/releases/download/v0.1.19/epack-core-linux-amd64"
      sha256 "ce827e3eaa818fed7a032cf3844eeccaaf9930b85bcef7ba557e034f77292242"
      def install
        bin.install "epack-core-linux-amd64" => "epack-core"
      end
    end
  end

  test do
    system "#{bin}/epack-core", "version"
  end
end
