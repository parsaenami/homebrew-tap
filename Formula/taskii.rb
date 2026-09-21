class Taskii < Formula
  desc "Keyboard-driven task manager and dashboard for your terminal"
  homepage "https://github.com/parsaenami/taskii"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.6.0/taskii-darwin-arm64.tar.gz"
      sha256 "17d543385435cb2db203804da18e74c28b9f5f1da11228a5fc7352c73cf59ea7"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.6.0/taskii-darwin-amd64.tar.gz"
      sha256 "09a637f2bffbefeceab4567c2d9c0c9b79ca78e1ccf0d05423fb24bb2b458306"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/parsaenami/taskii/releases/download/v0.6.0/taskii-linux-arm64.tar.gz"
      sha256 "51d736e10b5917ed1b71929977fc64bf7ed6d61e0d268a6d312b8ed5e6ba70c1"
    else
      url "https://github.com/parsaenami/taskii/releases/download/v0.6.0/taskii-linux-amd64.tar.gz"
      sha256 "4890d0056351864cf20f40841a4a7aa484e7a496245c0bbc4c6d5785c3c1e24d"
    end
  end

  def install
    bin.install Dir["taskii-*"].first => "taskii"
  end

  test do
    system "#{bin}/taskii", "--help"
  end
end
