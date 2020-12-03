##### Alert bình thường DONE #####
###########################

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

begin
    driver.get "https://www.seleniumeasy.com/test/javascript-alert-box-demo.html?fbclid=IwAR2ioJid-qYphgcDwIZzsaIJjEiKLwDTu2w807RDc5e-heYQD31l1LJ2kJs"
    driver.find_element(css: '.btn.btn-default').click
    alert = driver.switch_to.alert
    alert_text = alert.text
    sleep 3
    alert.accept
    sleep 3
    driver.quit
end