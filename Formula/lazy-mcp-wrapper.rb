class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.5.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.4/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "0178c50371dabbc110b8b19d48c8c64efc524f895c09fcdd44ab2399cd3e40a8"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.4/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "b31ce7e8489a6ddc54e9f991e0afcd67ee1e30c4ea9d832babae2f1c297772ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.5.4/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "a921cabefac1897dda1c5830fcb88c3fd71771a186067e5a9c01a2a4c4581ecf"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
