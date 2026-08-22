class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.1.0/taskii-darwin-arm64.tar.gz"
      sha256 "69a933a0886cd5e4b7dda9d1052bb7e87e7647314186b0958d99e3553e43495f"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.1.0/taskii-darwin-amd64.tar.gz"
      sha256 "d53054909e5e78e272e1fc5ea9e4105975f09774ae5178a075482e78263b628f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.1.0/taskii-linux-arm64.tar.gz"
      sha256 "8c7862178beaa4958e48cd3958dcfc383b53e45fb7be4705bbc0ed03ca007d99"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.1.0/taskii-linux-amd64.tar.gz"
      sha256 "aa380a04fd9c0e5258402ffa1493fc93eab08342437fbf217cc97becd2076f2f"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
