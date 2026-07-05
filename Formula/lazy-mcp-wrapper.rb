class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.0/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "2e050fc140e51f5e2bd93e57d0e248edd26456e2befc0df2fb9cfee37516e07b"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.0/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "1dbdf7f39b3c4c9b23caa94154d4cbb778a2d2da85f5904265ebf10778979451"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.0/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "b9a006302dce9bfcc0dc4fc0202060a25b1d29982ade3d45216fb8abab498e82"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
