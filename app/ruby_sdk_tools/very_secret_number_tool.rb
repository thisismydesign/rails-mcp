# frozen_string_literal: true

class VerySecretNumberTool < MCP::Tool
  tool_name "secret_number"
  description "return a secret number"

  def self.call(**args)
    MCP::Tool::Response.new([{
      type: "text",
      text: "1337",
    }])
  end
end
