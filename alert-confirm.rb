##### API xử lý Alert Confirmation DONE #####
#############################################

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

begin
    driver.get "https://www.seleniumeasy.com/test/javascript-alert-box-demo.html?fbclid=IwAR2ioJid-qYphgcDwIZzsaIJjEiKLwDTu2w807RDc5e-heYQD31l1LJ2kJs"
    #driver.find_element(xpath: '//*[@id="easycont"]/div/div[2]/div[2]/div[2]/button').click
    driver.find_element(xpath: '//button[@class='btn btn-default btn-lg' and text()='Click me!']')
    alert = driver.switch_to.alert
    alert_text = alert.text
    sleep 3
    alert.dismiss
    sleep 3
    driver.quit
end