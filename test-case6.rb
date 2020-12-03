##### Test Case 6 – Get page title after searching with Google.com #####
########################################################################

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

begin
    driver.get "https://www.google.com/"
    driver.manage.window.maximize
    driver.find_element(name: 'q').send_keys 'iTMS Coaching'
    driver.find_element(xpath: '//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]').click
    driver.manage.timeouts.implicit_wait = 3
    driver.find_element(xpath: '//*[@id="rso"]/div[1]/div/div[1]/a/h3/span').click
    driver.manage.timeouts.implicit_wait = 3
    puts driver.title
    sleep 3
    driver.quit
end
