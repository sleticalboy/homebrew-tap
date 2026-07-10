class TestloopMcp < Formula
  desc "MCP server for AI coding test feedback loops"
  homepage "https://github.com/sleticalboy/testloop-mcp"
  version "0.4.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/testloop-mcp/releases/download/v0.4.13/testloop-mcp_v0.4.13_darwin_arm64.tar.gz"
      sha256 "1bf12f6a3e0f26524b4199c17e2a03751cbaa52012dfc9acc1c1ef71809e1722"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sleticalboy/testloop-mcp/releases/download/v0.4.13/testloop-mcp_v0.4.13_linux_amd64.tar.gz"
      sha256 "3f693d8a593f376f3d73c39e596aef55321490f8ec1d72b77fc41e2e22d69cfc"
    end

    on_arm do
      url "https://github.com/sleticalboy/testloop-mcp/releases/download/v0.4.13/testloop-mcp_v0.4.13_linux_arm64.tar.gz"
      sha256 "cc107fa0c13d30fb4d0dd4cf906c6a66f55d677b37afda4aeecdaccdb0658047"
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
