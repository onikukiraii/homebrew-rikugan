class Rikugan < Formula
  desc "TUI diff reviewer for AI prompts"
  homepage "https://github.com/onikukiraii/rikugan"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.3.0/rikugan_0.3.0_darwin_amd64.tar.gz"
      sha256 "172865b8ea2a7eaecb458c96a8daef56d41c5339e1aeb8b7ea88f7a9fa6bb4a9"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.3.0/rikugan_0.3.0_darwin_arm64.tar.gz"
      sha256 "10acabd8882fb9bf6c886c23020f8c8b6ae2de9b76533c8ef87d700ffcb46605"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.3.0/rikugan_0.3.0_linux_amd64.tar.gz"
      sha256 "527a7227fdbedce67403131a0fd7dbf67f5d92628b203192e10b1a31be683e6f"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.3.0/rikugan_0.3.0_linux_arm64.tar.gz"
      sha256 "e69aad40a3ad98bb0b6a961bf7c85b6e83aa02c985be3c068f17d5f6b14cc914"
    end
  end

  def install
    bin.install "rikugan"
  end

  test do
    assert_match "rikugan", shell_output("#{bin}/rikugan --version")
  end
end
