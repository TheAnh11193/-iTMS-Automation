require 'selenium-webdriver'
require 'rubygems'
driver = Selenium::WebDriver.for :chrome
begin
  # Navigate to URL
  driver.get 'https://itmscoaching.herokuapp.com/form'
  driver.manage.window.maximize
  sleep 2
  ############ Get title ############
# You can read the current page title from the browser:
tx1 = driver.find_element(id:  "first-name")
tx1.send_keys 'iTMS'

tx2 = driver.find_element(id:  "last-name")
tx2.send_keys 'Coaching'

tx3 = driver.find_element(id:  "job-title")
tx3.send_keys 'QA'

tx4 = driver.find_element(id:  "radio-button-2")
tx4.click

tx5 = driver.find_element(id:  "checkbox-1")
tx5.click

options = driver.find_element(id:  "select-menu")
#puts options.inspect
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:value, "2")

tx6 = driver.find_element(id:  "datepicker")
tx6.send_keys '27/10/2025'

sleep 5
tx7 = driver.find_element(xpath:  "//a[contains(text(),'Submit')]")
tx7.click
sleep 5
ensure
  driver.quit
end 