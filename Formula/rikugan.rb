class Rikugan < Formula
  desc "TUI diff reviewer for AI prompts"
  homepage "https://github.com/onikukiraii/rikugan"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.5.0/rikugan_0.5.0_darwin_amd64.tar.gz"
      sha256 "9c284436e0810113dbe01b43feb4b49b3648d96262574b48a8a36beae960e1d2"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.5.0/rikugan_0.5.0_darwin_arm64.tar.gz"
      sha256 "3fdfb8690eca82f78f24137910faac9781b67705bd6946dbb786e885f0388b58"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.5.0/rikugan_0.5.0_linux_amd64.tar.gz"
      sha256 "6f681a6ea7c4972b6773709696c6c9e45e4f70dedb2353d6d8597607c7032bc0"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.5.0/rikugan_0.5.0_linux_arm64.tar.gz"
      sha256 "f79eaacf63d32a6069735aff5b1af2904f010ce0db9b8c486513a10cd49d9174"
    end
  end

  def install
    bin.install "rikugan"
  end

  test do
    assert_match "rikugan", shell_output("#{bin}/rikugan --version")
  end
end
