class GyazoMcpServer < Formula
  desc "Local MCP server for Gyazo with HTTP and stdio transport support"
  homepage "https://github.com/ishii-masaki-646/gyazo-mcp-server"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.0/gyazo-mcp-server-aarch64-apple-darwin.tar.gz"
      sha256 "7a6199587daa2ff1d34d7a3666077c4cf1d4d6e792086cdd2784d1b387377462"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.0/gyazo-mcp-server-x86_64-apple-darwin.tar.gz"
      sha256 "a07a6a76339e3637c8448e4ad960a2ebc644583a3f590e6d55082a804a81974c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.0/gyazo-mcp-server-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d80c5b0a75a8405c7b95190f51942246c4b06a746aea8102d295f3cf95a50a1"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.0/gyazo-mcp-server-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb5829049899fdb98a70ec414e6d10cc8eec79b264b04d9eb72b5e0fc617d075"
    end
  end

  def install
    bin.install "gyazo-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gyazo-mcp-server --version")
  end
end
