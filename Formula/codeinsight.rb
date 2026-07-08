class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.8/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "a5c5585aceef24cfbbdce8a5b275129333d89a1245ebab05441cf5c5645530b6"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.8/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "3bb7af678998a917b165039ae3c52d6d60da113ee84d8ccdd983470c1542dd26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.8/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c0ad39a39c23ceb07fa02596c1e08538b0adb8a787901427da387a7ca35ab95"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.8/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfe01eb642c506e23aae275198d645846db4f4f2cdf0325c0dcd551d8d15195f"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
