require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Tourgames
  class Application < Rails::Application
    config.serve_static_assets = true
    config.assets.precompile += %w( search.js )
  end
end
