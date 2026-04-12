class GyazoMcpServer < Formula
  desc "Local MCP server for Gyazo with HTTP and stdio transport support"
  homepage "https://github.com/ishii-masaki-646/gyazo-mcp-server"
  version "0.6.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.2/gyazo-mcp-server-aarch64-apple-darwin.tar.gz"
      sha256 "a24b02abdda9f0ba10abb628ac6deb0769372a5729908d1e655422b9a5773c16"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.2/gyazo-mcp-server-x86_64-apple-darwin.tar.gz"
      sha256 "62aa096927568b5494038e3e1881ef16743b3c76d8be17341eb4f99035e9225a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.2/gyazo-mcp-server-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6438467102aca8cc8695bd440db29404b4daea5e1dccbc3e387414b37856893"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.2/gyazo-mcp-server-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c95e18932d96853909e18397a8cf5e003eb9722f50c7e18e67634d79a0daba82"
    end
  end

  def install
    bin.install "gyazo-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gyazo-mcp-server --version")
  end
end
