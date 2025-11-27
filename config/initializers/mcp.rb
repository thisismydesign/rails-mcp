MCP.configure do |config|
  config.exception_reporter = ->(exception, server_context) {
    Rails.logger.error "MCP exception: #{exception.class} - #{exception.message}"
    Rails.logger.error "Backtrace: #{exception.backtrace.join("\n")}"
  }
end
