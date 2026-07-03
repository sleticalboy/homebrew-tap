class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.2.0/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "d223407f9aad036c660b32c23f9f933c32de3df9e08965099c6acc9cdea36f17"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.2.0/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "ba259feb700b3eb17e092605ec9170e153fa933960659714ec57626040a21854"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.2.0/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "efa707ccc8a562db2c80b6a61618e6d31de80c282cee44af57ed1ac71dbfa7d4"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
