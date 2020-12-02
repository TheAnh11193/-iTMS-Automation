require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
  # Navigate to URL
  driver.get 'https://google.com'
  driver.manage.window.maximize
  sleep 2

ensure
  driver.quit
end