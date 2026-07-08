class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.6/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "19b955da68cd085e941eaf396c8a2890575e2813142a28ad59536a1c8f8d4701"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.6/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "db010c1490f1504d10a17d75bbf10ccc038a89bfd96b6bb637da516c533df79e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.6/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9467ccc8f551769d333189628f15ebd8fc1cc846e8e43ae7bfba575f8539a1e"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.6/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7a5c1df2397cf92205396438e63c8736676d07a41894afd6aa19e9fc8227fe8"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
