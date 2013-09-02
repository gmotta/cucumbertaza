require 'rubygems'
require 'taza/page'

module EspacoDaCrianca
  class HomePage < ::Taza::Page

  	def initialize()
  		@site.browser.goto "http://espaco-da-crianca.herokuapp.com/"
  	end

  end
end
