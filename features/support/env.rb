
require 'bundler/setup'
Bundler.require

require 'capybara/cucumber'
require 'rspec'
include Capybara::DSL
require 'capybara/dsl'
require 'rspec/core'
require 'rspec/expectations'
include RSpec::Matchers
require 'selenium/webdriver'
require 'report_builder'
require 'capybara-screenshot/cucumber'




Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium #:selenium, :selenium_headless, :selenium_chrome, :selenium_chrome_headless
  config.app_host = "https://parabank.parasoft.com/"
  config::save_path = "./FailedSnapshots/"

  Capybara.register_driver :selenium do |app|
   profile = Selenium::WebDriver::Firefox::Profile.new
   profile.assume_untrusted_certificate_issuer =false
   Capybara::Selenium::Driver.new(app, browser: :firefox, profile: profile)
 end
end


=begin
Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.assume_untrusted_certificate_issuer =true

  #options = Selenium::WebDriver::Firefox::Options.new(profile: profile)
  Capybara::Selenium::Driver.new(app, browser: :firefox, profile: profile)
  # Capybara::Selenium::Driver.new(app,
  #                                browser: :firefox,
  #                                options: options
  # )

end
=end

#Capybara.default_driver = :selenium



#
# Capybara.register_driver :chrome do |app|
#   options = Selenium::WebDriver::Chrome::Options.new
#   options.add_argument("--window-size=1024,768")
#
#
#   Capybara::Selenium::Driver.new(app,
#                                  :browser => :firefox,
#                                  :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.firefox(
#                                      'chromeOptions' => {
#                                          'args' => [ "--window-size=200,200" ]
#                                      }
#                                  )
#   )
# end