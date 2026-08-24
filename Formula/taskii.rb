class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.1/taskii-darwin-arm64.tar.gz"
      sha256 "9565580ce52fa74f3b854ec0a70dcf1c091c53b3ef112c09c90d776c7deecb83"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.1/taskii-darwin-amd64.tar.gz"
      sha256 "ac7a1186080282f7700c40e62a64f27be3983eec07353a1d92c80c2a530ed74f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.1/taskii-linux-arm64.tar.gz"
      sha256 "31a55666f0db6be2d21746f9d1bfe566b488449e0670d119d9cd3a789ba5ab42"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.1/taskii-linux-amd64.tar.gz"
      sha256 "810eb8d3bd8f5076c7c67e9233630ee9ca8f84b9b9091d36489007c831d0558c"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
