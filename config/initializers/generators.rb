Rails.application.config.generators do |g|
  g.test_framework :rspec, {
                   fixtures: false,
                   fixture_replacement: :factory_bot,
                   dir: 'spec/factories',
                   view_specs: false,
                   helper_specs: false,
                   routing_specs: false,
                   request_specs: false,
                   controller_specs: false
                  }
end
