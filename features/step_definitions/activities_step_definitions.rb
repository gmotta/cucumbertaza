Then(/^the page title should contain "(.*?)"$/) do |title|
  @site.browser.title.include? title
end