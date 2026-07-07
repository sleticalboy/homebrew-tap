class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.4/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "b921c92d8813771725fbdedb6b89b0d7280347de56438d3dce0f9905b9cbfd8b"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.4/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "29cb59833e544db240824b6834f5523cc87077d69a66505f01754b778a9f42b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.4/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2941f7f6febf58929f0d97cd15e582837c7f560f082c2c552957892b90b32fe9"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.4/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "030d47b99b638167e5257500d06e5f3af5dfc15f1539b6ae2bf8ec8d27607b6f"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
