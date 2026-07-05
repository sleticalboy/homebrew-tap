class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.2/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "6574fd0ff9e7cd1402bed45c0e3d7bf27d263f2c325bdcb03f594ce667a3e8f0"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.2/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "43fa1a3d540dae53c41398a24b8c34ea6ce2e15c248d47a05a889ce46b7ef00f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.2/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "70101b9ab175960f0aab9ac358f0c4b9807cfb45dba3fecb3bff1e07527ad7bd"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
