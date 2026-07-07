class Codeinsight < Formula
  desc "Local-first code intelligence MCP server for AI agents"
  homepage "https://github.com/sleticalboy/CodeInsight-mcp"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.3/codeinsight-aarch64-apple-darwin.tar.gz"
      sha256 "407cd0a59a866623353bf07ca57bab8897b4c5ad18093c0331409f43cb875b9a"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.3/codeinsight-x86_64-apple-darwin.tar.gz"
      sha256 "ec7c804db95935ffa49c964ea4d2ebdda730dbdbd144cbbffe5f287f963e4e3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.3/codeinsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e365d9122492b31f6147e34ef305fe50ae949c9559168b8508483c696ee4911"
    end

    on_intel do
      url "https://github.com/sleticalboy/CodeInsight-mcp/releases/download/v0.1.3/codeinsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ef8318f1e605a5dc85e748bd01d85d86f053c1385408c6aac5919fd342277d4"
    end
  end

  def install
    bin.install "codeinsight"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/codeinsight --help")
  end
end
