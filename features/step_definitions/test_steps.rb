require 'watir'

require 'colorize'

#To Prevent Chrome from closing after one line is executed.
caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {'detach' => true})
browser = Watir::Browser.new :chrome, desired_capabilities: caps



Given(/^I enter "([^"]*)" in broswer$/) do |browser_url|
  browser.goto(browser_url)
end

Then(/^I enter text "([^"]*)" in the search box$/) do |input_text|
  browser.text_field(:title,"Search").set(input_text)
end

Then (/^I tap on search button$/) do
  browser.button(:value, "Search").click
end

Then(/^I wait for the Page to load$/) do
  sleep(10)
end


Then(/^I assert for the (.*) in class$/) do |logo_subtext|
  browser.div(:class, "logo_subtext")
end

Then(/^I assert for the (.*) in text$/) do |text|
  browser.link(:verify, text)

end


Then(/^I click on back button$/) do
  browser.back
end


Then(/^I print the URL of the new page$/) do
  puts browser.url
end

When(/^I click on "([^"]*)" in the link$/) do |arg|
  browser.link(:text, "Advertising").click
end

When(/^I click on (.*) in the link$/) do |linktext|
  browser.link(:text, linktext).click
end



Then(/^I get (.*) class name printed\.$/) do |text|
  var = browser.link(:text, text).class
  puts var
end

Then(/^I tap on the Voice button$/) do
  browser.button(:label, "Search by voice").click
end

Then(/^I assert for the (.*) in navbar$/) do |linktext|
  if browser.div(:id, 'top_nav').link(:text, linktext) == true
    puts "Text exists, proceeding to click it"

  else
    puts "Your bad, text doesnt exist"
  end

end



Then(/^I click on (.*) in the navbar$/) do |linktext|
 lin = browser.div(:id, 'top_nav').link(:text, linktext)
  lin.click

end


Then(/^I fetch the visible links in that page$/) do
  puts browser.links
end

Then(/^I click on first Image on that page$/) do

end

Then(/^I assert for "([^"]*)" in the page$/) do |arg|
  browser.link(:text, 'imdb') == true
end

Then(/^I print the text with class$/) do
  weather = browser.div(:data_attrid => "kc:/location/citytown:current weather").text
  puts weather

end

Then(/^I verify "([^"]*)" in page$/) do |text|
  browser.text.include? "Plan a trip"
end


Then(/^I maximize the browser$/) do
  browser.driver.manage.window.maximize
end