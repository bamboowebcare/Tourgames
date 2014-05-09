require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module Tourgames
  class Application < Rails::Application
    config.serve_static_assets = true
    config.action_dispatch.x_sendfile_header = nil
    config.assets.precompile += %w( search.js )
  end
end
