require 'mcp'

HELLO_WORLD_MCP_SERVER_PATH = File.expand_path("../../../mcps/hello_world.rb", __FILE__)

$mcp_client = MCP::Client.new(
  command: "ruby",
  args: [HELLO_WORLD_MCP_SERVER_PATH]
)
$mcp_client.connect

at_exit do
  begin
    $mcp_client&.close
  rescue => e
    Rails.logger.error "MCP cleanup failed: #{e.message}"
  end
end
