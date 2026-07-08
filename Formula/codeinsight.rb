class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.7/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "b1fb2e8625c5cf42b6e5079479cfa07e2b3f0e18ac027e86782d073e70412d2d"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.7/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "cbad42338cad0c209ac8ca3134c7ca3e251bb3498b1b65b67022ce2ec95812b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.7/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5be2923e8fd4aed727a35934461ec8e41ed4d5237e53b0949e2df31355c940ec"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.7/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5470ca1c7bd233f66e0d964c39b057ba58a06fcea24a6315778b0e5e720465b"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
