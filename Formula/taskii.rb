class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.5.1/taskii-darwin-arm64.tar.gz"
      sha256 "e7bf371d1db41f5f76ac42bc5627c245a088cf14d7abcf2eaef0290e81e54b71"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.5.1/taskii-darwin-amd64.tar.gz"
      sha256 "346e8c7f6d2adab2ea5a1684004e8667bdcdcfb5ccdd351000c9aaf62074759c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.5.1/taskii-linux-arm64.tar.gz"
      sha256 "5955f6835c675912d40666c8ba586f657efd5fe630f70952891b0e743e601d18"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.5.1/taskii-linux-amd64.tar.gz"
      sha256 "c258ef077d2ec88b48efc5c84229adf599ac4fea4fe92c77a42c047477ba3ed7"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
