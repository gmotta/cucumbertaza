# encoding: utf-8

Before do
  @site = Espaco.new
end

After do
  @site.browser.close
end

Given(/^the visitor is on the home page$/) do
  @site.home_page                                                                                                          
end                                                                                                                                                     
                                                                                                                                                          
When(/^he clicks on "([^"]*)"$/) do |name|                                                                                                                      
  @site.menu.click_menu(name)

end                                                                                                                                                       
                                                                                                                                                          
Then(/^the page url should contain "([^"]*)"$/) do |name|                                                                                                     
   @site.home_page.browser_url?(name).should be_true
end

Then(/^welcome banner is displayed$/) do
     @site.home_page.sub_heading_exists?('Bem vindo').should be_true
 end

Then(/^the page should contain "([^"]*)"$/) do |name|
     @site.home_page.sub_heading_exists?(name).should be_true
end

When(/^he clicks on facebook link$/) do
    @site.home_page.facebook_link.click
end

Then(/^the facebook page is displayed$/) do
    @site.home_page.facebook_page?("https://www.facebook.com/espacodacrianca.arh")
end

Then(/^all logos of the sponsors must be displayed$/) do
	@site.home_page.home_page_contains_eleven_sponsors_images?.should be_true
end

Then(/^contact information is displayed on the footer \(Blog, Facebook, YouTube, e\-Mail, Phone\)$/) do
     @site.home_page.footer_elements_shown?.should be_true
end
