# encoding: utf-8

Before do
  @site = Espaco.new
end

After do
  @site.browser.close
end


Given(/^the visitor is on the home page$/) do                                                                                                             
  @site.browser
end                                                                                                                                                     
                                                                                                                                                          
When(/^he clicks on Activities$/) do                                                                                                                      
  @site.home_page.activities_link.click

end                                                                                                                                                       
                                                                                                                                                          
Then(/^the page url should contain "([^"]*)"$/) do |name|                                                                                                     
   @site.home_page.browser_url?(name).should be_true
end

Then(/^welcome banner is displayed$/) do
     @site.home_page.sub_heading_exists?('Bem vindo').should be_true
 end

Then /^the page should contain "([^"]*)"$/ do |name|
     @site.home_page.sub_heading_exists?(name).should be_true
end

When(/^he clicks on facebook link$/) do
    @site.home_page.facebook_link.click
end

Then(/^the facebook page is displayed$/) do
    @site.home_page.facebook_page?("https://www.facebook.com/espacodacrianca.arh")
end

When(/^he clicks on the 'Patrocínio' link$/) do
     @site.home_page.patrocinio_link.click
 end

Then(/^contact information is displayed on the footer \(Blog, Facebook, YouTube, e\-Mail, Phone\)$/) do
     @site.home_page.footer_elements_shown?.should be_true
end
