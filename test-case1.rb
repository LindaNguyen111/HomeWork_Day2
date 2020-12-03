##### Test Case 1 - Launch browser and Open Google.com #####
############################################################

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

begin
    driver.get 'https://www.google.com/'
    sleep 3
    driver.quit
end 
