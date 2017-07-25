require 'watir'
require 'cucumber'
require 'page-object'
require 'selenium-webdriver'
require 'rspec'

World PageObject::PageFactory

Before do |scenario|
  Selenium::WebDriver::Chrome.driver_path = File.dirname(__FILE__)+'/chromedriver.exe'
  @browser = Watir::Browser.new 'chrome'
end

After do |scenario|
  @browser.close
end