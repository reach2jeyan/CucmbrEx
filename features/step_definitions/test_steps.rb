require 'watir'

require 'watir/browser'

#To Prevent Chrome from closing after one line is executed.
caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {'detach' => false})
browser = Watir::Browser.new :chrome

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

Then(/^I assert for the text (.*) in page$/) do |text|
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

Then(/^I tap on the "([^"]*)" text$/) do |text|
  browser.div(text: text).click
end

Then(/^I assert for browser title ([^"]*)$/) do |arg1|
  browser.title.eql?(arg1)
end

Then(/^I enter text ([^"]*) in Where from? field$/) do |arg1|
  browser.div(class: "OMOBOQD-yb-c OMOBOQD-c-r OMOBOQD-D-g").click
  browser.send_keys(arg1)
end

Then(/^I enter text ([^"]*) in Where to? field$/) do |arg1|
  browser.div(class: "OMOBOQD-yb-c OMOBOQD-c-r OMOBOQD-D-b").click
      browser.send_keys(arg1)
end

Then (/^I click on from date$/) do
  browser.div(class: "OMOBOQD-G-d OMOBOQD-G-o").click
  browser.send_keys(:backspace)
end

Then (/^I enter date "([^"]*)" in from date field$/) do |from_date|
  browser.div(class: "OMOBOQD-G-d OMOBOQD-G-o").click
      browser.send_keys(from_date)
end

Then (/^I click on to date$/) do
  browser.div(class: "OMOBOQD-G-s OMOBOQD-G-r OMOBOQD-c-r OMOBOQD-D-h").click
end

Then (/^I enter date "([^"]*)" in to date field$/) do |from_date|
  browser.div(class: "OMOBOQD-G-s OMOBOQD-G-r OMOBOQD-c-r OMOBOQD-D-h").click
      browser.send_keys(from_date)
    browser.send_keys(:enter)
end


Then (/^I print the prices$/) do
  browser.divs(:class => 'OMOBOQD-d-Ab').each do |div|
    puts div.text

  end

end 

Then(/^I assert for "([^"]*)" in the page$/) do |arg|
  browser.link(:text, 'imdb') == true
end


Then(/^I verify "([^"]*)" in page$/) do |text|
  browser.text.include? "Plan a trip"
end


Then(/^I maximize the browser$/) do
  browser.driver.manage.window.maximize
end


Then(/^I enter "([^"]*)" in data_attribute and print content$/) do |data_attribute|
  data = browser.div(:data_attrid => data_attribute).text
  puts data
end

Then(/^I print the text present in the pop up$/) do
  browser.divs(:id => 'redir-footer').each do |div|
    puts div.text
  end
end


Then(/^I click "([^"]*)" on the popup$/) do |text|
  browser.div(:id => 'redir-footer' ).link(:text => text).click
end

Then(/^I click on "([^"]*)" with text "([^"]*)" using div id$/) do |nav, text|
  lin = browser.div(:id, nav).link(:text, text)
  lin.click
end


Then(/^I click on button with text "([^"]*)"$/) do |text|
  browser.span(:text => text).click
end

Then(/^I enter "([^"]*)" using div id "([^"]*)"$/) do |name, div|
  browser.input(:id => div).click
  browser.send_keys(name)
end



Then(/^I assert for the text field with div id "([^"]*)"$/) do |div|
  browser.input(:id => div)
end

Then(/^I click on link with text "([^"]*)"$/) do |text|
  browser.link(:text => text).click
end


When(/^I assert on link with div id "([^"]*)"$/) do |div|
  browser.div(:id => div).click
  end


Then(/^I assert for the (.*) in text$/) do |text|
  pending
end