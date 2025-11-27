# frozen_string_literal: true

class ApplicationController < ActionController::API
  def mcp2
    server = MCP::Server.new(
      name: "rails-mcp",
      version: "1.0.0",
      tools: [VerySecretNumberTool]
    )
    render(json: server.handle_json(request.body.read))
  end
end
