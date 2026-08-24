class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.3/taskii-darwin-arm64.tar.gz"
      sha256 "0ec18669e863b5886de898fe9b467bb51e7a9361de91883cd05a35ca88b6edd0"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.3/taskii-darwin-amd64.tar.gz"
      sha256 "564c95a4f089575b77a6833512bc5ca473371c2ffc8a624fa6c2243482ff9905"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.3/taskii-linux-arm64.tar.gz"
      sha256 "9bfb4e2c8ac92d332b46e0157f4629e2ca31c2f623a93bc23bba8c33b0913243"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.3/taskii-linux-amd64.tar.gz"
      sha256 "cef4c8cd51fa7ef65477efbfb0dca3f4be3e77d88986a89028e902b58b0e83e1"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
