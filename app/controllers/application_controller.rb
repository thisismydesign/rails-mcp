# frozen_string_literal: true

class ApplicationController < ActionController::API
  def mcp2
    # Config for browser-based inspector:
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'

    # Handle CORS preflight
    if request.method == "OPTIONS"
      head :ok
      return
    end

    configuration = MCP::Configuration.new(protocol_version: "2025-06-18")

    server = MCP::Server.new(
      name: "rails-mcp",
      version: "1.0.0",
      tools: [VerySecretNumberTool],
      configuration: configuration
    )
    render(json: server.handle_json(request.body.read))
  end
end
