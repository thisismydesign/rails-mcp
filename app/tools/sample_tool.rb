# frozen_string_literal: true

class SampleTool < ApplicationTool
  description 'Greet a user'

  # Optional: Add annotations to provide hints about the tool's behavior
  # annotations(
  #   title: 'User Greeting',
  #   read_only_hint: true,      # This tool only reads data
  #   open_world_hint: false     # This tool only accesses the local database
  # )

  def call
    "Hi! This is sample tool"
  end
end
