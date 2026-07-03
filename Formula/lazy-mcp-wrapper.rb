class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.1.0/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "b3ee061c389b0efca40db63a1261cc8c88f3204efd7c36b1dc5dda4449cb8c41"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.1.0/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "c4a3700ce2441b5cc6d0b5bbcccc710b407aaa4606716154125a13d1556fb1f1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.1.0/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "c9b7512e23e0c4c6e07dbb76898e8c0c50fa4f6480262978771590be76b8ce78"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
