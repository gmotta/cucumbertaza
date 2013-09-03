require 'rubygems'
require 'taza/page'

module Espaco
  class HomePage < ::Taza::Page

  	#def initialize()
  	#	@site.browser.goto "http://espaco-da-crianca.herokuapp.com/"
  	#end

    element(:sub_heading) { |name| browser.h1(:text => name) }



  end
end
