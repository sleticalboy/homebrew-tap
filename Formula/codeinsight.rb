class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.11/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "0bfc9ee6199bf927b3341871522e3c9382ded2314c0964fc47c1657fe2881091"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.11/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "3bdb23656728eede7b6d078c5487708d9e235cfe3ba6bb2e03698b25315d6ec6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.11/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba9824f125d72acfb35c7d7fa0e7c9ed8522df4392ef39b59a5d9e9eb90b5cb9"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.11/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6dbc647bf9d7b0b82730d406cd8f67dbba3db3c040dcd5c8fea08f1b32216770"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
