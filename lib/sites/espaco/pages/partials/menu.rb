# encoding: utf-8

require 'rubygems'
require 'taza/page'

module Espaco
  class Menu < ::Taza::Page
    
    element(:link)                    { |name| browser.link(:text => name) }

    def click_menu(name)      
      link(name).when_present.click
    end

  end
end