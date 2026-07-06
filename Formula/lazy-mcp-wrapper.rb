class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.4.0/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "965189aa696c0575853c4e394aa1f4d454402c889bc57e66acafe5526215b084"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.4.0/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "48cc43de294592c0ce6b1475750ca62cf5cfda8d184b9adf30eb287c1a7a9f12"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.4.0/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "346050fb7997c5b962f15efc3256b53683b35bd654a77948010a967002374f2b"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
