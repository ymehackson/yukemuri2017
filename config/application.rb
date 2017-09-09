require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Yukemuri2017
  class Application < Rails::Application
     config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework false
    end
    config.load_defaults 5.1
  end
end
