# encoding: utf-8

require 'rubygems'
require 'taza/page'

module Espaco
  class HomePage < ::Taza::Page

    element(:sub_heading)             { |name| browser.h1(:text => name) }
    element(:blog)                    { browser.link(:text => 'Blog')}
    element(:facebook)                { browser.link(:text => 'Facebook') }
    element(:youtube)                 { browser.link(:text => 'Youtube') }
    element(:email)                   { browser.link(:text => 'arhcrianca@gmail.com') }
    element(:phone)                   { browser.img(:alt => 'Phone') }
    element(:facebook_link)           { browser.img(:src => "/assets/facebook-66627c1860af27dbc237f98fa9191582.png") }
    element(:sponsors)                { browser.div(:id => 'index').section(:id => 'sponsors').div(:class => 'container') }
    element(:comunities_image)        { browser.img(:src => "/assets/activities/comunidade_index-38255d738b2b889d41800eeb6bf13431.jpg") }
    element(:comunidades)             { browser.link(:text => "Comunidades")}
    element(:familias)                 { browser.link(:text => 'Famílias')}
    element(:criancas)                { browser.link(:text => 'Crianças')}

    def sub_heading_exists?(name)
      sub_heading(name).text.include? name
    end
    
    def footer_elements_shown?
      blog.exists? && facebook.exists? && youtube.exists? && email.exists? && phone.exists?
    end
      
    def facebook_page?(url)
      !browser.windows.find{|w| w.url == url}.nil?
    end

    def home_page_contains_eleven_sponsors_images?
      sponsors.imgs.size == 11
    end
    
    def browser_url?(name)
      browser.url.include? name
    end 
    
    def click_activity(activity)
      case activity
        when "Comunidades" then comunidades.when_present.click
        when "Famílias" then familias.when_present.click
        when "Crianças" then criancas.when_present.click
      end
    end
    
  end
end
