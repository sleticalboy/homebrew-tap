class LazyMcpWrapper < Formula
  desc "Lightweight lazy stdio MCP proxy and shared daemon"
  homepage "https://github.com/sleticalboy/lazy-mcp-wrapper"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.1/lazy-mcp-wrapper-darwin-arm64.tar.gz"
      sha256 "9cf82e5071cf95703fd40762f5902d18bbbfc6c10503ec5c1336f51d51f829bb"
    else
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.1/lazy-mcp-wrapper-darwin-amd64.tar.gz"
      sha256 "1cea5138c0dad21a7b60484a9b54e0b6461084cfcffe44ee0994efe3430fcacc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sleticalboy/lazy-mcp-wrapper/releases/download/v0.3.1/lazy-mcp-wrapper-linux-amd64.tar.gz"
      sha256 "d2b06fb6f7dc9daec35fe011b113df9be5b444230d203f5d0c8f8e8ce78f4666"
    end
  end

  def install
    bin.install Dir["lazy-mcp-wrapper-*"].first => "lazy-mcp-wrapper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazy-mcp-wrapper --version")
  end
end
