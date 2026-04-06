class GyazoMcpServer < Formula
  desc "Local MCP server for Gyazo with HTTP and stdio transport support"
  homepage "https://github.com/ishii-masaki-646/gyazo-mcp-server"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.5.1/gyazo-mcp-server-aarch64-apple-darwin.tar.gz"
      sha256 "53a12b6a52c1bc85011857eca1317e0f844a32e75aabc6ca137a816b994a94e2"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.5.1/gyazo-mcp-server-x86_64-apple-darwin.tar.gz"
      sha256 "7e7524debc4f3f08a60dcbe26b12e67b4287314c6074cd76bbacc94bb9c257e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.5.1/gyazo-mcp-server-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3af64cf52727501c9abf0001903ede1304bdd6a0829d0cb5c065fc8d8f9f56de"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.5.1/gyazo-mcp-server-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a12b81a83842fc3a870fd25c1bb519281010675b19abf624de3b79447e584730"
    end
  end

  def install
    bin.install "gyazo-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gyazo-mcp-server --version")
  end
end
