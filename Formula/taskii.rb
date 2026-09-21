class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.8.0/taskii-darwin-arm64.tar.gz"
      sha256 "c0557ed24cd4dd27d905505a31d0c4df88dc107c1bb9b95b68ce2704de56267a"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.8.0/taskii-darwin-amd64.tar.gz"
      sha256 "2efa1b30875634389ececfb5f03a90c50e356b554c9ff8b2bf7974bf34f62f25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.8.0/taskii-linux-arm64.tar.gz"
      sha256 "e2f9d01a79cb6545515a1966fa08e56c452bacd794a0be99522d5ba800a14e23"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.8.0/taskii-linux-amd64.tar.gz"
      sha256 "0638ff18fd90d0531b2f9a2a3532905eb382c82e2be52045ec4f1f98371bb9b7"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
