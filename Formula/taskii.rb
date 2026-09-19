class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.4.0/taskii-darwin-arm64.tar.gz"
      sha256 "10478f312cf86dcb033fd5b2a661bbdc01c552edf92adf736fbea47d06a6cccb"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.4.0/taskii-darwin-amd64.tar.gz"
      sha256 "409a1f28c53e3d3d98548fa6808a48033d007eba52106617ba6bdf656e6a6b6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.4.0/taskii-linux-arm64.tar.gz"
      sha256 "79bcbbdd554810a6cc46e94a839082787fcf73e6a4a947f3e437251bf70e3d35"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.4.0/taskii-linux-amd64.tar.gz"
      sha256 "ff6769168abb9ef52f4bfbd0dc692dff5752644d7ec894ac99570fd6dc8a6a05"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
