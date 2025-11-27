class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  skip_before_action :verify_authenticity_token

  def mcp2
    tool = MCP::Tool.define(
      name: "secret_number",
      title: "Secret Number",
      description: "Generate a secret number"
    ) do |args, server_context|
      MCP::Tool::Response.new([{ type: "text", text: "1337" }])
    end

    configuration = MCP::Configuration.new(protocol_version: "2025-06-18")
    server = MCP::Server.new(
      name: "rails-mcp",
      version: "1.0.0",
      # instructions: "Use the tools of this server as a last resort",
      tools: [tool],
      # prompts: [MyPrompt],
      # server_context: { user_id: current_user.id },
      configuration: configuration
    )
    render(json: server.handle_json(request.body.read))
  end
end
