class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.3.0/taskii-darwin-arm64.tar.gz"
      sha256 "6ac40f6d835c6046d718adc049f8092c758514b03885a22cc3d4e5f0b28290dd"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.3.0/taskii-darwin-amd64.tar.gz"
      sha256 "47a42707bded68cf116f61498703975604b27004504e6231cf5c063937778613"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.3.0/taskii-linux-arm64.tar.gz"
      sha256 "fb200dfb5a0a76d69a79f50e9d3ccacf14ff2ded09536491aa081381d1ec873d"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.3.0/taskii-linux-amd64.tar.gz"
      sha256 "eb73c3a50ecbfc05bcc167b2596416e59160c9c6fafc498c8101ba4e2e217b0c"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
