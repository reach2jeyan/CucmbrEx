require 'selenium-webdriver'
require 'cucumber'

After do  |scenario|


  if scenario.failed
    logs = page.driver.browser.manage.logs.get("browser")
    send_failure_email(logs)



end
end
