##### Test Case 5 - Open Google.comand Print Page source #####
##############################################################

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

begin
    driver.get "https://www.google.com/"
    driver.manage.window.maximize
    driver.page_source
    sleep 3
    driver.quit
end