class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.5/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "852a32c6c21210e8fbafa206e83013d7f68093033285f34860f3b8319aea1d62"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.5/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "d2e86842d0d06b810d83a61780173fb4f5c8addecf90a9f1838a8f617169efcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.5/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3657d2b8769e75816cdde7735ab45e23df1dcf877ce97233ca671e7bacf79a8"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.5/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1515b3bb6817dcb03797e07ff6ad230c7198dc640ed08dbdc3cae6f3ddf454f"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
