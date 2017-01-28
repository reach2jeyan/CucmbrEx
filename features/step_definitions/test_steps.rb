require 'watir'

require 'colorize'

browser= Watir::Browser.new :chrome



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
  browser.link(:verify, "text")

end


Then(/^I click on back button$/) do
  browser.back
end


Then(/^I get the URL of the page$/) do
  puts browser.url
end

Then(/^I click (.*) in the footer bar$/) do |footertext|
  browser.div(class: '_Gs').link(text: 'footertext')
end