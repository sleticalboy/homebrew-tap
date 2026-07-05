class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.3/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "1f0b9a35a3e65aa56b2c64da300b5d1cfdadfd8d5109048b8b84c27603afaf67"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.3/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "13ee4838b98dbb3bdf16a44fce43c5ce6c3626a68cdfe75d89cec5c2f0663c9f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.3/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "68cd1337511b8f56f532426fc58739e5c93472de24acc853421993a49d89f38d"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
