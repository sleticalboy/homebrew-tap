class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.4.1/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "b9ef4e85520e54fd836ff1703ccddfdcf3227cb99712e5bd62d81081e9a184e8"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.4.1/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "b17cc2df017928ba1d8c41f239c124b3f807463fb24e626913b9b38029a79466"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.4.1/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "d47133240c8adae43f7ce4db2fe1733d81ef700079ea6ba658264858d49e3c77"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
