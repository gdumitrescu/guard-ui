require 'capybara-webkit'

Evergreen.configure do |config|
  #config.driver = :selenium
  config.driver = :webkit
  config.public_dir = 'app'
  #config.template_dir = 'templates'
  config.spec_dir = 'spec/javascripts'
end
