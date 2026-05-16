class Lly < Formula
  desc "TUI for Shelly Gen2/Gen3 devices to discover, manage, and interact with"
  homepage "https://github.com/lailo/lly"
  url "https://github.com/lailo/lly/releases/download/v0.1.1/lly-darwin-arm64.tar.gz"
  version "0.1.1"
  sha256 "6c49c061556ca5a6c75e1034fe28691f3b699a728a05733598c46daa54626b07"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"lly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lly --version")
  end
end
