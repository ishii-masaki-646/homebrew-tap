class GyazoMcpServer < Formula
  desc "Local MCP server for Gyazo with HTTP and stdio transport support"
  homepage "https://github.com/ishii-masaki-646/gyazo-mcp-server"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.7.0/gyazo-mcp-server-aarch64-apple-darwin.tar.gz"
      sha256 "cd418b241fbc7dfe7bee658685d8e09b3ed6833f37fcd573f6e2d5e101dcda3b"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.7.0/gyazo-mcp-server-x86_64-apple-darwin.tar.gz"
      sha256 "5020152dafd97ddce9eb179a5a629cd9c8646ff68f6548681dd3460b2382dfbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.7.0/gyazo-mcp-server-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da04ffea71b611f3a6f697f90044f6d2e9c1478fc933e26f3815b0e6993c5a31"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.7.0/gyazo-mcp-server-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eac0fed55136c0d0ea8937ffde87b8f7eaa479b9e2443a720ee0de616cd226fd"
    end
  end

  def install
    bin.install "gyazo-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gyazo-mcp-server --version")
  end
end
