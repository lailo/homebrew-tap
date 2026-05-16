class Lly < Formula
  desc "TUI for Shelly Gen2/Gen3 devices to discover, manage, and interact with"
  homepage "https://github.com/lailo/lly"
  url "https://github.com/lailo/lly/releases/download/v0.1.0/lly-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "a24f0181fc554264b4b7e5a0e12d66e919a161b635c801685f4355a259d52910"
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
