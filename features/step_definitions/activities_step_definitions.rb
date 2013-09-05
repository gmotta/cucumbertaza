Then(/^the page title should contain "(.*?)"$/) do |title|
  @site.browser.title.include? title
end

When(/^he clicks on the "Comunidades" image$/) do
  @site.home_page.comunities_image.click
end   