require 'watir'
require 'watir-webdriver'
require 'colorize'

browser= Watir::Browser.new :ff



Given(/^I enter "([^"]*)" in broswer$/) do |browser_url|
  browser.goto(browser_url)
end

Then(/^I enter text "([^"]*)" in the search box$/) do |input_text|
  browser.text_field(:title,"Search").set(input_text)
end

Then (/^I tap on search button$/) do
  browser.button(:name, "btnK").click
end