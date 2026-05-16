class Bergauf < Formula
  desc "MCP server for planning hikes in Switzerland"
  homepage "https://github.com/lailo/bergauf"
  url "https://github.com/lailo/bergauf/releases/download/v1.0.0/bergauf-darwin-arm64.tar.gz"
  version "1.0.0"
  sha256 "41fafe45d5d08ba04949e02374cd8cb4e1318174d7423cc9fd3a1779c4756ebf"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bergauf"
  end

  test do
    assert_predicate bin/"bergauf", :executable?
  end
end
