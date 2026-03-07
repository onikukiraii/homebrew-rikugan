class Rikugan < Formula
  desc "TUI diff reviewer for AI prompts"
  homepage "https://github.com/onikukiraii/rikugan"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.2.0/rikugan_0.2.0_darwin_amd64.tar.gz"
      sha256 "97f27763b4e61a9997fbf9ef278ec1825d96143b8178cfcb4a4cd88cfeb310c4"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.2.0/rikugan_0.2.0_darwin_arm64.tar.gz"
      sha256 "46b81d71fa22d489c7345db598c1e5a909c7832d6978de3d431be25f1cdbbdb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.2.0/rikugan_0.2.0_linux_amd64.tar.gz"
      sha256 "9a1d5369e27d2692f6afc2185911dadc4b6be14c182d0e3c30751454852ba689"
    end
    on_arm do
      url "https://github.com/onikukiraii/rikugan/releases/download/v0.2.0/rikugan_0.2.0_linux_arm64.tar.gz"
      sha256 "8c340b136895003d4bc206b2a5c948b491606a4d2a85f1320b168d469f65bf9e"
    end
  end

  def install
    bin.install "rikugan"
  end

  test do
    assert_match "rikugan", shell_output("#{bin}/rikugan --version")
  end
end
