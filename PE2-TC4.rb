require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
  # Navigate to URL
  driver.get 'https://google.com'
  driver.manage.window.maximize
  sleep 2
  ############ Get title ############
# You can read the current page title from the browser:
puts driver.current_url
ensure
  driver.quit
end 