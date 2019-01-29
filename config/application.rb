require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Porpos
  class Application < Rails::Application
    config.load_defaults 5.2
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.assets.initialize_on_precompile = false
    config.autoload_paths += %W[
      #{config.root}/lib
      #{config.root}/app/uploaders
      #{config.root}/app/models/businesses
    ]
    # rspec
    config.generators do |g|
      g.test_framework :rspec,
                       fixtures:      false,
                       view_specs:    false,
                       helper_specs:  false,
                       routing_specs: false
    end
  end
end
