class Lly < Formula
  desc "TUI for Shelly Gen2/Gen3 devices to discover, manage, and interact with"
  homepage "https://github.com/lailo/lly"
  url "https://github.com/lailo/lly/releases/download/v0.0.0/lly-darwin-arm64.tar.gz"
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "lly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lly --version")
  end
end
