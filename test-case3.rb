##### Test Case 3 - Open Google.comand Print it's Page title #####
##################################################################

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

begin
    driver.get 'https://www.google.com/'
    driver.manage.window.maximize
    puts driver.title
    sleep 3
    driver.quit   
end



