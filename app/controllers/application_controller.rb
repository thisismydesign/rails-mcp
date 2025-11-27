class ApplicationController < ActionController::API
  def mcp2
    # Config for browser-based inspector:
    # Set CORS headers for POST response
    # headers['Access-Control-Allow-Origin'] = '*'
    # headers['Access-Control-Allow-Methods'] = 'POST, OPTIONS'
    # headers['Access-Control-Allow-Headers'] = 'Content-Type'

    # # Handle CORS preflight
    # if request.method == "OPTIONS"
    #   head :ok
    #   return
    # end

    server = MCP::Server.new(
        name: "rails-mcp",
        version: "1.0.0",
        tools: [SecretNumber]
      )
    render(json: server.handle_json(request.body.read))
  end
end
