##### Test Case 4 - Open Google.comand Print current url #####
##############################################################

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

begin
    driver.get "https://www.google.com/"
    driver.manage.window.maximize
    puts driver.current_url
    sleep 3
    driver.quit
end
