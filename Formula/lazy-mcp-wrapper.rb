class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.0/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "088fcdae4b18504ebf48c493893940d0eed577a4f975d324ca588100e8fc11f2"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.0/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "deeeac6ba42bf678ddd829bd287706d402fde31af46e8927d2e0bfee8071477c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.0/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "1c2f4de5f64550f06e8a5fbc7a35495f0fda8bcca0b46113aefa3c56e8617a4d"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
