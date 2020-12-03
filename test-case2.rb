##### Test Case 2 - Open Google.comand maximize/set size of browser window #####
################################################################################

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

begin
    driver.get 'https://www.google.com/'
    driver.manage.window.resize_to(884,534)
    sleep 3
    driver.quit
end
