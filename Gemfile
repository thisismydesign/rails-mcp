source "https://rubygems.org"

# Defaults
gem "rails", "~> 8.0.2" # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "propshaft" # The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "pg", "~> 1.1" # Use postgresql as the database for Active Record
gem "puma", ">= 5.0" # Use the Puma web server [https://github.com/puma/puma]
gem "importmap-rails" # Importmap for Rails [https://github.com/rails/importmap-rails]
gem "turbo-rails" # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "stimulus-rails" # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "tzinfo-data", platforms: %i[ windows jruby ] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "solid_cache" # Use the database-backed adapters for Rails.cache and Active Job
gem "solid_queue" # Use the database-backed adapters for Rails.cache and Active Job
gem "bootsnap", require: false # Reduces boot times through caching; required in config/boot.rb
gem "kamal", require: false # Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "thruster", require: false # Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude" # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "brakeman", require: false # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
end

group :development do
  gem "web-console" # Use console on exceptions pages [https://github.com/rails/web-console]
end

# App
gem "fast-mcp", git: "https://github.com/yjacquin/fast-mcp.git", branch: "mcp-2025-06-18"
gem 'mcp'
