class GyazoMcpServer < Formula
  desc "Local MCP server for Gyazo with HTTP and stdio transport support"
  homepage "https://github.com/ishii-masaki-646/gyazo-mcp-server"
  version "0.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.1/gyazo-mcp-server-aarch64-apple-darwin.tar.gz"
      sha256 "e63ddde72092c50635a7ecbb218db3b7d62b1f1b2ebf6da40af4a8a2a61af0e1"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.1/gyazo-mcp-server-x86_64-apple-darwin.tar.gz"
      sha256 "65500f51c5cc766485b10aae77ffe7716e2f53c0bec90ded2a3190193729bdf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.1/gyazo-mcp-server-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2fe691381020110fe75c53d7bf3f28244bd1ca51ee296f7b99c6fc982e685f0"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.1/gyazo-mcp-server-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d373ea4b2556a9e922bfe010d6f2329c0c4c7078d5750285dfb9d8c5f1edc9fe"
    end
  end

  def install
    bin.install "gyazo-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gyazo-mcp-server --version")
  end
end
