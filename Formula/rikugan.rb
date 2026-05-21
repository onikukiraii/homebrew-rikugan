class Rikugan < Formula
  desc "TUI diff reviewer for AI prompts"
  homepage "https://github.com/onikukiraii/rikugan"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.6.0/rikugan_0.6.0_darwin_amd64.tar.gz"
      sha256 "fc97f6af5e612e2f2039037663aa8951eb98e1e08209aa0dd37141972fc53d1f"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.6.0/rikugan_0.6.0_darwin_arm64.tar.gz"
      sha256 "90239b1f7fb26aea5b5ff1b58494e09761136f17b38b7e9d68039f9a94580fa2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.6.0/rikugan_0.6.0_linux_amd64.tar.gz"
      sha256 "3fe6fdb503d81ed2b9e6e2ed7bb1fad1bf2f4aa0fe55b896ab3f5ee1c3e8c940"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.6.0/rikugan_0.6.0_linux_arm64.tar.gz"
      sha256 "9872fe6d510fc3a55cc6a587df17af51e1e9b0619a9862a631e0c2ff6d0d4436"
    end
  end

  def install
    bin.install "rikugan"
  end

  test do
    assert_match "rikugan", shell_output("#{bin}/rikugan --version")
  end
end
