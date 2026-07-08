class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.9/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "4cbf9329ba4be85eb258715603a9e002ab2f6c0e48779d3c15903fcb63087f34"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.9/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "6e2cdecce3c7e64264714d027c66a22440d684a8c6423c792f9130159bdc8292"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.9/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3193841497a4a045eb77a988ea7bc1963e8af98fe25ea00864ce3a2578aa0a67"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.9/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "690728165be297776ea5a60f217897534ffec8897c2a5cbfd57c7d7f0da8b341"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
