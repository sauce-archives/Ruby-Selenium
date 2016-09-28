require "selenium/webdriver"

caps = {
  :platform => "Windows 7",
  :browserName => "Chrome",
  :version => "45"
}

driver = Selenium::WebDriver.for(:remote,
	:url => "https://YOUR_SAUCE_USERNAME:YOUR_SAUCE_ACCESS_KEY@ondemand.saucelabs.com:443/wd/hub",
	:desired_capabilities => caps)

driver.get('http://saucelabs.com/test/guinea-pig')

puts "title of webpage is: #{driver.title()}"

driver.quit()