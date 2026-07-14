class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.12/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "2b6042662001f213ad8042960f8dd8be13880efde32b05c830856fa41bf8a230"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.12/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "9fd614e77c8aa5729ec6b9e8c615526f43596d00f8ba3618e2c92ccf48b27a24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.12/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52bdef03b67f3e00e4b9a89a7dca1cb2f0515e58adefd1cffc1ec5120b631406"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.12/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab7919ba44780d97389368186e1afc68c272828df843bd55a18592217c2ed1df"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
