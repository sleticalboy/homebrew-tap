class TestloopMcp < Formula
  desc "MCP server for AI coding test feedback loops"
  homepage "https://github.com/sleticalboy/testloop-mcp"
  version "0.4.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/testloop-mcp/releases/download/v0.4.14/testloop-mcp_v0.4.14_darwin_arm64.tar.gz"
      sha256 "b343f71ec472c8f080d11e9bada8ba2c48d45d99c412878f3a2f0e19238d26e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sleticalboy/testloop-mcp/releases/download/v0.4.14/testloop-mcp_v0.4.14_linux_amd64.tar.gz"
      sha256 "a6efd47f72d65360645c7d45aea6f14b83db2c6df3611e1674a49a0561124c5a"
    end

    on_arm do
      url "https://github.com/sleticalboy/testloop-mcp/releases/download/v0.4.14/testloop-mcp_v0.4.14_linux_arm64.tar.gz"
      sha256 "b8d2cb06452241d040fd6053706534db01ca9ae23ea424f2f82cad0528235dfc"
    end
  end

  def install
    bin.install "testloop-mcp"
    bin.install "testloop-testgen"
  end

  test do
    assert_match "Usage of testloop-mcp", shell_output("#{bin}/testloop-mcp --help 2>&1", 2)
    assert_match "Usage: testgen", shell_output("#{bin}/testloop-testgen --help 2>&1", 2)
  end
end
