require 'rubygems'
require 'taza/page'

module Espaco
  class HomePage < ::Taza::Page

  	#def initialize()
  	#	@site.browser.goto "http://espaco-da-crianca.herokuapp.com/"
  	#end

    element(:sub_heading)             { |name| browser.h1(:text => name) }
    element(:activities_link)         { browser.link(:text => 'Atividades') }
    element(:blog)                    { browser.link(:text => 'Blog')}
    element(:facebook)                { browser.link(:text => 'Facebook')}
    element(:youtube)                 { browser.link(:text => 'Youtube')}
    element(:email)                   { browser.link(:text => 'arhcrianca@gmail.com')}
    element(:phone)                   { browser.img(:alt => 'Phone')}        

    def sub_heading_exists?(name)
      sub_heading(name).text.include? name
    end
    
    def footer_elements_shown?
      blog.exists? && facebook.exists? && youtube.exists? && email.exists? && phone.exists?
    end



  end
end
