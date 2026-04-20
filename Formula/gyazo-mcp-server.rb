class GyazoMcpServer < Formula
  desc "Local MCP server for Gyazo with HTTP and stdio transport support"
  homepage "https://github.com/ishii-masaki-646/gyazo-mcp-server"
  version "0.6.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.3/gyazo-mcp-server-aarch64-apple-darwin.tar.gz"
      sha256 "11a8ecafcb4e5c6656277f6c66ea4099f117dd8aa0a10db02a712542dc2c18a3"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.3/gyazo-mcp-server-x86_64-apple-darwin.tar.gz"
      sha256 "5f74d51d49b20ccc5f0c1acf7cacbae2c1832d15b22825d3f9b6dfca3715aa75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.3/gyazo-mcp-server-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "506d1198603e008944ccd87d056fffb97331f6807c0a88f1fe585426655c4fb9"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.6.3/gyazo-mcp-server-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47b016435002a01375504cdc6825e3b095817e0d273cde807b0ae8a83a43dac5"
    end
  end

  def install
    bin.install "gyazo-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gyazo-mcp-server --version")
  end
end
