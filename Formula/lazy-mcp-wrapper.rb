class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.1/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "aa46e9fd66956d3cccd44f4cae8ca3b4e4abf6948bfbbe5e29ff76afb1853200"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.1/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "3ee6ebe0a61e96ba1f115c740fee0f0fd90a0771389f3b2ec1d4407097b296ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.1/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "6e134d1beb5774318c7dac1c9d286b90d266e43c4d1386f0c8ffb70b86f5b706"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
