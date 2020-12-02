require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
  # Navigate to URL
  driver.get 'https://google.com'
  sleep 5
ensure
  driver.quit
end