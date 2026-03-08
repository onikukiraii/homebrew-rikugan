class Rikugan < Formula
  desc "TUI diff reviewer for AI prompts"
  homepage "https://github.com/onikukiraii/rikugan"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.3.1/rikugan_0.3.1_darwin_amd64.tar.gz"
      sha256 "edc0759f46a5bbf458438a03b4127df62fdbaf38e4eef618c11339ff724fb0da"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.3.1/rikugan_0.3.1_darwin_arm64.tar.gz"
      sha256 "bb53f37e29fd735af43a6e8a9bc74c4056528eda108c50cbb2ac815809ce333b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.3.1/rikugan_0.3.1_linux_amd64.tar.gz"
      sha256 "4a6e3da0a3eb67561e48b73ad44e83a84dbbf56f94c37128ac7b2d434e78342f"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.3.1/rikugan_0.3.1_linux_arm64.tar.gz"
      sha256 "2b9d3088efb9e33b714190c0dcdce42432cdd9b384d13915a436741fd87f6833"
    end
  end

  def install
    bin.install "rikugan"
  end

  test do
    assert_match "rikugan", shell_output("#{bin}/rikugan --version")
  end
end
