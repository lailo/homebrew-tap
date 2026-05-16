class Bergauf < Formula
  desc "MCP server for planning hikes in Switzerland"
  homepage "https://github.com/lailo/bergauf"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lailo/bergauf/releases/download/v#{version}/bergauf-darwin-arm64"
      sha256 "5cf4bbed0270a8d9d7feb313eeb1d3b4e29bf00d4ea17090e23f6d9e077112ab"
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
