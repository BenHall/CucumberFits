Then /^I should see the "([^"]*)" element$/ do |element|
  page.should have_css("##{element}")
end
When /^I visit the "([^"]*)" page$/ do |page_name|
  visit url_for(page_name)
end
When /^the "([^"]*)" (ul|ol|dl) should contain (\d+) items$/ do |list, type, items|
  pending
end
When /^I should see "([^"]*)" in the "([^"]*)" list$/ do |text, list|
  within("##{list}") do
    page.should have_content(text)
  end
end
When /^the "([^"]*)" element should contain (?:a|the) "([^"]*)" (?:control|element)$/ do |parent, contained|
  pending
end
Then /^I should see "([^"]*)" in the page text$/ do |text|
  pending
end