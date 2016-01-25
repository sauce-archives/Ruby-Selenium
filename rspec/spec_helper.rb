require "rspec"
require_relative "sauce_driver"
 
RSpec.configure do |config|
  config.around(:example, :run_on_sauce => true) do |example|
    @driver = SauceDriver.new_driver
    begin
      example.run
    ensure
      @driver.quit
    end
  end
end