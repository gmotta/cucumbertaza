require 'rubygems'
require 'taza'

module Espaco
  include ForwardInitialization

  class Espaco < ::Taza::Site
  	def close
  		browser.close
  	end
  end
end
