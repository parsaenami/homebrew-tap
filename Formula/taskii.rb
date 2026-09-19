class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.5.0/taskii-darwin-arm64.tar.gz"
      sha256 "dd399c3adef5d78122eba2955b687f3bcdb08b395384e44ff6bb23ba77745af0"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.5.0/taskii-darwin-amd64.tar.gz"
      sha256 "9dbdef18128342270c77344741350f20457ce6be05e25bff2b03b89461ce60e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.5.0/taskii-linux-arm64.tar.gz"
      sha256 "d395775b8af7dad8e01fce215a7bc76a378100cb406bdd5a3c5a234426658591"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.5.0/taskii-linux-amd64.tar.gz"
      sha256 "96dd197e0711830a84cee78cfdcdce725e4a290f68c6900ee0e7eca592a72270"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
