class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.4.1/taskii-darwin-arm64.tar.gz"
      sha256 "fdb65cd73628473eef3f2d2b6841fd772318295e3fad63b209244d125f05f0db"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.4.1/taskii-darwin-amd64.tar.gz"
      sha256 "63abdf9b33f8ae3a81bf5548f1ba57282c8dbfe0e086a68aff202a83807efee5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.4.1/taskii-linux-arm64.tar.gz"
      sha256 "38c717db3a56d0be71317d1496d2e2fa78691e565bff42c7af20008eba49f409"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.4.1/taskii-linux-amd64.tar.gz"
      sha256 "1d7625e1331079c412ed49e2c1a539fd8b4e177544a14fb1d07413dfe135f209"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
