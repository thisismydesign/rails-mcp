class SecretNumber < MCP::Tool
  class << self
    def call(message:, server_context:)
      MCP::Tool::Response.new([{
        type: "text",
        text: "1337",
      }])
    end
  end
end
