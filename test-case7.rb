#################### Test Case 7 – Input form ####################
##################################################################

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

begin
    driver.get "https://itmscoaching.herokuapp.com/form"
    driver.manage.window.maximize
    sleep 1

    first_name = driver.find_element(css: '#first-name')
    first_name.send_keys('iTMS')
    sleep 1

    last_name = driver.find_element(css: '#last-name')
    last_name.send_keys('Coaching')
    sleep 1

    job_type = driver.find_element(css: '#job-title')
    job_type.send_keys('QA')
    sleep 1

    education = driver.find_element(css: '#radio-button-2')
    education.click
    sleep 1

    sex = driver.find_element(css: '#checkbox-1')
    sex.click
    sleep 1

    experience = driver.find_element(css: '#select-menu')
    driver.manage.timeouts.implicit_wait = 1
    driver.find_element(css: 'option[value="2"]').click
    sleep 1

    date = driver.find_element(css: '#datepicker')
    date.send_keys '10/27/2025'
    sleep 1

    submit = driver.find_element(css: '.btn.btn-lg.btn-primary')
    submit.click

    sleep 5
    driver.quit
end
