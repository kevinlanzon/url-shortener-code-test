Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |input, url|
  fill_in(input, :with => url)
end

When(/^click on "([^"]*)"$/) do |submit|
  click_button(submit)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
