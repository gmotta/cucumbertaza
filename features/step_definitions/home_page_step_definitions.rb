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
  #@site.browser.goto "http://espaco-da-crianca.herokuapp.com/#activities"                                                                                      
end                                                                                                                                                       
                                                                                                                                                          
Then(/^the page url should contain 'activities'$/) do                                                                                                     
   (@site.browser.url.include? "#activities").should == true  
end

# Then(/^a "(.*?)" banner is displayed$/) do |arg1|
#     pending # express the regexp above with the code you wish you had
# end

Then /^the page should contain "([^"]*)"$/ do |name|
     @site.home_page.sub_heading_exists?(name).should be_true
 end

# When(/^he click on facebook link$/) do
#     pending # express the regexp above with the code you wish you had
# end

# Then(/^the facebook page is displayed$/) do
#     pending # express the regexp above with the code you wish you had
# end

# When(/^he click on facebook "(.*?)" link$/) do |arg1|
#     pending # express the regexp above with the code you wish you had
# end

# Then(/^facebook page is liked$/) do
#     pending # express the regexp above with the code you wish you had
# end

When(/^he clicks on the 'Patrocínio' link$/) do
     @site.home_page.patrocinio_link.click
 end

# Then(/^contact information is displayed on the footer \(Blog, Facebook, YouTube, e\-Mail, Phone\)$/) do
#     pending # express the regexp above with the code you wish you had
# end
