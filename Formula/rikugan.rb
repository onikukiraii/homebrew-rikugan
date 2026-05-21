class Rikugan < Formula
  desc "TUI diff reviewer for AI prompts"
  homepage "https://github.com/onikukiraii/rikugan"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.6.1/rikugan_0.6.1_darwin_amd64.tar.gz"
      sha256 "0211da47169e58449fae4488e3886bcd778545a11ad8ce45546bd980d8f65739"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.6.1/rikugan_0.6.1_darwin_arm64.tar.gz"
      sha256 "f24a24cf2895defbb9d909e8db325f3db1fcbe6c18f0263f11c11dc76ffcb699"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.6.1/rikugan_0.6.1_linux_amd64.tar.gz"
      sha256 "1492333d4c81e40b2c17874188651f33e53fa475b843a0e4dba424d41e7ae15d"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.6.1/rikugan_0.6.1_linux_arm64.tar.gz"
      sha256 "e8e4cbd4c9ce30e4745fae818894cb6af46c52c7677ea280b61438c022cb122b"
    end
  end

  def install
    bin.install "rikugan"
  end

  test do
    assert_match "rikugan", shell_output("#{bin}/rikugan --version")
  end
end
