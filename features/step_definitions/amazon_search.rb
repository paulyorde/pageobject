require 'watir'
require 'cucumber'



Given(/^a user goes to Amzon$/) do
  Selenium::WebDriver::Chrome.driver_path = File.dirname(__FILE__)+'/chromedriver.exe'
  @browser = Watir::Browser.new 'chrome'
  @browser.goto "http://www.amazon.com"
end

When(/^they search for "([^"]*)"$/) do |arg|
  @browser.text_field(:id => "twotabsearchtextbox").set "#{arg}"
  @browser.send_keys :return
end

Then(/^amazon should return results for "([^"]*)"$/) do |arg|
  @browser.li(:id => "resut_2").wait_until_present
  page_output = @browser.div(:id => "resultscol").text.include? "#{arg}"
  assert (page_output == true)
end