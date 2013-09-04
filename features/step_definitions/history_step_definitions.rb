# encoding: utf-8

When(/^the visitor click on history$/) do
  @site.historia_page.historia_link.click
end

Then(/^the history page is displayed$/) do
  @site.historia_page.sub_heading_exists?(name).should be_true
end
