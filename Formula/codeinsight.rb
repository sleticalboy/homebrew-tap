class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.10/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "26266def597cfd10e9e735017cbbd233d222f71ba9d9bc3323637ac399a1628f"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.10/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "5b4c199fee4cb2b651f3f12be81b147976da86f2f1cd1fe297ff9908f6f54e60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.10/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a08713d4e7b3049b66584be852fd6330ab40c61c1c910aec1ad47375e5215a3"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.10/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2878de4f5e43caa9b9248a030707abe9cfb282f62aac4c309ca3bb83b73f822b"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
