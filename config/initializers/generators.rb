Rails.application.config.generators do |g|
  g.javascripts false
  g.stylesheets false
  g.helper false
  g.assets false
  g.test_framework :rspec,
                   fixture: true,
                   view_specs: false,
                   helper_specs: false,
                   routing_specs: false,
                   controller_specs: true,
                   request_specs: true
  g.fixture_replacement :factory_bot, dir: 'spec/factories'
end
