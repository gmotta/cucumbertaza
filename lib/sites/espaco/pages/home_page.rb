# encoding: utf-8

require 'rubygems'
require 'taza/page'

module Espaco
  class HomePage < ::Taza::Page

  	#def initialize()
  	#	@site.browser.goto "http://espaco-da-crianca.herokuapp.com/"
  	#end

    element(:sub_heading) { |name| browser.h1(:text => name) }
    element(:activities_link) { browser.link(:text => 'Atividades') }
    element(:patrocinio_link) {browser.link(:text => "Patrocínio")}

    def sub_heading_exists?(name)
      sub_heading(name).text.include? name
    end

  end
end
