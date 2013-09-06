# encoding: utf-8

When(/^the visitor click on history$/) do
  @site.navigate_to_history_flow
end

Then(/^the history page is displayed$/) do
  @site.historia_page.sub_heading_exists?('Nossa história').should be_true
end