class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.4.2/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "8b8ed5288f3e8d804c3e72f77cdc7fe71f062a2e5f28b0ca6a08b0e01fe10bf1"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.4.2/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "5372dd3b9d988c6f2d01c6000d3c8db884951660e6e6a6682c06185161d57e0a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.4.2/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "84985aa4c1f64799370ed81f148ddc62acc5664c9ba52af67636a9efcd43e6a0"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
