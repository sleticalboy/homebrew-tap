class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.3/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "c5b7562218e18108ea1ac4f137e2f63efb5c0b04a71c55729e278b1d63ad6a34"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.3/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "ed868bff419c84d3aee6f051b88ad44ef50320ae9253e2902225c16c7b76e74c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.3/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "2a098d13580b20c6f87f1b65ef2ca8d39e9ec709cbeeca773933d57b15eb0f20"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
