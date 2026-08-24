class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.0/taskii-darwin-arm64.tar.gz"
      sha256 "d5feff920852a839965b31ba8f256cf275f533fac01533a58e2da62ad722b909"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.0/taskii-darwin-amd64.tar.gz"
      sha256 "d946f4fb6a3d1bfdacde4da8ab8de909b4cda4432e6e0bd5d19a4de782398d98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.0/taskii-linux-arm64.tar.gz"
      sha256 "4bd6271f3a7369aac9c82068ec94434ecdc13295ffd022fbf206120e83af2773"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.0/taskii-linux-amd64.tar.gz"
      sha256 "618e4973e73e0a1451aa78f3a4eedd4692d2b057b10cd72ff5751d930b60133f"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
