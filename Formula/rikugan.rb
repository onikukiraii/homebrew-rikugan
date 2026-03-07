class Rikugan < Formula
  desc "TUI diff reviewer for AI prompts"
  homepage "https://github.com/onikukiraii/rikugan"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.1.0/rikugan_0.1.0_darwin_amd64.tar.gz"
      sha256 "2f26e2bbae5830a4a79d8725889b0f6f7c57ba643b0d61e3ddb87fccea41f14b"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.1.0/rikugan_0.1.0_darwin_arm64.tar.gz"
      sha256 "2c47c2fd10e4a2e32906da14e35c751f84f5920dbdb7ee2dfe2cc257b9995121"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.1.0/rikugan_0.1.0_linux_amd64.tar.gz"
      sha256 "c7bab7a620e750d57b33604fdb5aedbd487e3099e7915cc5101d83469c716466"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.1.0/rikugan_0.1.0_linux_arm64.tar.gz"
      sha256 "c95f34e8811ec8924d678757459c719580607af324f6174667a8138344e30e15"
    end
  end

  def install
    bin.install "rikugan"
  end

  test do
    assert_match "rikugan", shell_output("#{bin}/rikugan --version")
  end
end
