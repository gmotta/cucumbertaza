require 'rubygems'
require 'taza'

module EspacoDaCrianca
  include ForwardInitialization

  class EspacoDaCrianca < ::Taza::Site
  	def close
  		browser.close
  	end
  end
end
