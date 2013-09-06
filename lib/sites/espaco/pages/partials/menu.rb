# encoding: utf-8

require 'rubygems'
require 'taza/page'

module Espaco
  class Menu < ::Taza::Page
    
    element(:inicio)                    { browser.link(:text => "Início") }
    element(:atividades)                { browser.link(:text => "Atividades") }
    element(:historia)                  { browser.link(:text => "História") }
    element(:multimidia)                { browser.link(:text => "Multimídia") }
    element(:patrocinio)                { browser.link(:text => "Patrocínio") }
    element(:noticias)                  { browser.link(:text => "Notícias") }
    element(:como_ajudar)               { browser.link(:id => "how_to_help_btn") }
    element(:outro_link)                { |name| browser.link(:text => "name" )}
    

    def click_menu(link)      
      #link.gsub(" ","_").downcase.to_sym
      #link(name).when_present.click
      case link
        when "Início" then inicio.when_present.click
        when "Atividades" then atividades.when_present.click
        when "História" then historia.when_present.click
        when "Multimídia" then multimidia.when_present.click
        when "Patrocínio" then patrocinio.when_present.click
        when "Notícias" then noticiais.when_present.click
        when "Como ajudar?" then como_ajudar.when_present.click          
        else outro_link(link)
      end
      
      
    end
    

  end
end