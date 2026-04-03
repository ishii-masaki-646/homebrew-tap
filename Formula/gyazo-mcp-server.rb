class GyazoMcpServer < Formula
  desc "Local MCP server for Gyazo with HTTP and stdio transport support"
  homepage "https://github.com/ishii-masaki-646/gyazo-mcp-server"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.5.0/gyazo-mcp-server-aarch64-apple-darwin.tar.gz"
      sha256 "50bc543205e5a74fa8389cef8bf532f7f7f5d84655b22fc34824b37a2099cb79"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.5.0/gyazo-mcp-server-x86_64-apple-darwin.tar.gz"
      sha256 "72983a388298dc2338018f121241815e06b28307cdaf7fd07cb450816f0375ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.5.0/gyazo-mcp-server-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2e1b7731522bf8a3702bad3f435e295233a7580123cc8c738ae6f55c91f68fb"
    else
      url "https://github.com/ishii-masaki-646/gyazo-mcp-server/releases/download/v0.5.0/gyazo-mcp-server-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "554735a44203bbda89b9393e0da0d41e18b67fee46e904f1893cdb101279902f"
    end
  end

  def install
    bin.install "gyazo-mcp-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gyazo-mcp-server --version")
  end
end
