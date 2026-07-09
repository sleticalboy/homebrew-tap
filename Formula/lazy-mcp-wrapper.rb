class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.2/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "5d4dbc46744500927d3f6ffb2c9584ac5774997032d1a9d15cc2b7e2292a5e64"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.2/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "111df667e4e74b769bb5ab95721057dc88e4a667aaac5da501d8c0293db269aa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.2/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "133e027803b2d3de4a50434c89ab4b1b30f2b59cd6dc0141316d1a2a9708d8c3"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
