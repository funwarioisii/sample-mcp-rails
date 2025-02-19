class HelloController < ApplicationController
  def index
    name = params[:name]

    begin
      result = $mcp_client.call_tool(
        name: "greet",
        args: { name: name.presence || "Guest" }
      )
      render json: result
    rescue => e
      Rails.logger.error "MCP call failed: #{e.message}"
      render json: { error: "Failed to process greeting" }, status: :internal_server_error
    end
  end
end
