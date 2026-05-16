class Bergauf < Formula
  desc "MCP server for planning hikes in Switzerland"
  homepage "https://github.com/lailo/bergauf"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lailo/bergauf/releases/download/v1.0.0/bergauf-darwin-arm64.tar.gz"
      sha256 "41fafe45d5d08ba04949e02374cd8cb4e1318174d7423cc9fd3a1779c4756ebf"
    end
    on_intel do
      url "https://github.com/lailo/bergauf/releases/download/v#{version}/bergauf-darwin-x64"
      sha256 "7dc14737c8d8314539f9e319ba0958009cdeb745506247c04cb8706d2c475fa1"
    end
  end

  def install
    binary = Hardware::CPU.arm? ? "bergauf-darwin-arm64" : "bergauf-darwin-x64"
    bin.install binary => "bergauf"
  end

  test do
    assert_predicate bin/"bergauf", :executable?
  end
end
