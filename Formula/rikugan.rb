class Rikugan < Formula
  desc "TUI diff reviewer for AI prompts"
  homepage "https://github.com/onikukiraii/rikugan"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.4.0/rikugan_0.4.0_darwin_amd64.tar.gz"
      sha256 "0fe465344a7d719594e207e7d309bc55a25f03704e5de3d80177200aaafc1d96"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.4.0/rikugan_0.4.0_darwin_arm64.tar.gz"
      sha256 "a55699dae6245835ebb4220b5fc1762d63497679b9adfacd38378a9780e56dd4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.4.0/rikugan_0.4.0_linux_amd64.tar.gz"
      sha256 "0ee11a753c2c14c8e328369759989052fa55ff742881e3cb8a87006ee9e1661d"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.4.0/rikugan_0.4.0_linux_arm64.tar.gz"
      sha256 "602366d1617da0e264f8b85ec850b1405f5d41aae9f70fca9e90de835c662549"
    end
  end

  def install
    bin.install "rikugan"
  end

  test do
    assert_match "rikugan", shell_output("#{bin}/rikugan --version")
  end
end
