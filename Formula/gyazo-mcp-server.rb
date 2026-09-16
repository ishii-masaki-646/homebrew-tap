class GyazoMcpServer < Formula
  desc "Local MCP server for Gyazo with HTTP and stdio transport support"
  homepage "https://github.com/ishii-masaki-646/gyazo-mcp-server"
  version "0.7.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.7.1/gyazo-mcp-server-aarch64-apple-darwin.tar.gz"
      sha256 "1e968d8ddd3cd4cf96a8ee06e635c6dbe79e01726e299261dedba29baf81b104"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.7.1/gyazo-mcp-server-x86_64-apple-darwin.tar.gz"
      sha256 "395b4e96b3990bcc5f776c209bafcdfa06f7d5363af859c0b426eee27d85d4fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.7.1/gyazo-mcp-server-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "374301a436547c49445b101799f56f5065867b9f84375d815f1e3f5b0250f9c5"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.7.1/gyazo-mcp-server-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba9b76dc9a3c9a2c2d289aa12fd269215a4eee1e2bb364b4d44bce8aaab03ef2"
    end
  end

  def install
    bin.install "gyazo-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gyazo-mcp-server --version")
  end
end
