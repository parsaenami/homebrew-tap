class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.7.0/taskii-darwin-arm64.tar.gz"
      sha256 "290f49bd3fb5588b04f9975d7e421169704e38f294ff0dc47a309b51a9ebe8b8"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.7.0/taskii-darwin-amd64.tar.gz"
      sha256 "ff8fa40209e0f33367f8c8aaa77cf736eb4baaf8f300dca5ed54aec07de87eb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.7.0/taskii-linux-arm64.tar.gz"
      sha256 "cfe0c78600ae5942a0093d9f6956d66b22e860adf43d141437c36f1effddf19a"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.7.0/taskii-linux-amd64.tar.gz"
      sha256 "c40616e22bf95e80412335a16dc254e949f1c0f26258c3d4c40201f2d4ec4d42"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
