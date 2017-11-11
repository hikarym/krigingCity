require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KrigingCity
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.eager_load_paths << "#{Rails.root}/lib"

    # Make time columns be time zone aware.
    # This will be the default in Rails 5.1.
    # See https://github.com/rails/rails/pull/15726.
    config.active_record.time_zone_aware_types = [:datetime, :time]

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
