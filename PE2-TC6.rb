require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
  # Navigate to URL
  driver.get 'https://google.com'
  driver.manage.window.maximize
  sleep 2
  ############ Get title ############
# You can read the current page title from the browser:
search = driver.find_element(css: '[name="q"]')
search.send_keys 'iTMS Coaching'
search.send_keys :enter
puts driver.title
sleep 5
ensure
  driver.quit
end 