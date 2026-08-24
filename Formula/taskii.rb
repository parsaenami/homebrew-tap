class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.2/taskii-darwin-arm64.tar.gz"
      sha256 "550fdad3d38fed5032a21de1c65fef5abd66d62b8b68c936bfa54865c4e78660"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.2/taskii-darwin-amd64.tar.gz"
      sha256 "d973332018d2054499a2b862f5af675aaabdc93f99afe7e0312d4dc2a7490bd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.2/taskii-linux-arm64.tar.gz"
      sha256 "5c6f6d5dba9b35ff0b4238f1b71c06a03992c24996e7522dbcf1c27d565ef6bc"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.2.2/taskii-linux-amd64.tar.gz"
      sha256 "6525b5b100b1a5b7450eeca258d73b95e34531ccdb4ff2252b60e5579dc2af53"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
