# encoding: utf-8

require 'rubygems'
require 'taza/page'

module Espaco
  class HomePage < ::Taza::Page

    element(:sub_heading)             { |name| browser.h1(:text => name) }
    element(:activities_link)         { browser.link(:text => 'Atividades') }
    element(:blog)                    { browser.link(:text => 'Blog')}
    element(:facebook)                { browser.link(:text => 'Facebook') }
    element(:youtube)                 { browser.link(:text => 'Youtube') }
    element(:email)                   { browser.link(:text => 'arhcrianca@gmail.com') }
    element(:phone)                   { browser.img(:alt => 'Phone') }
    element(:facebook_link)           { browser.img(:src => "/assets/facebook-66627c1860af27dbc237f98fa9191582.png") }
    element(:patrocinio_link) 		  { browser.link(:text => "Patrocínio") }

    def sub_heading_exists?(name)
      sub_heading(name).text.include? name
    end
    
    def footer_elements_shown?
      blog.exists? && facebook.exists? && youtube.exists? && email.exists? && phone.exists?
    end
      
    def facebook_page?(url)
        !browser.windows.find{|w| w.url == url}.nil?
    end

  end
end
