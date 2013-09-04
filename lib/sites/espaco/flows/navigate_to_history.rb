# encoding: utf-8

require 'rubygems'

module Espaco
  class Espaco < ::Taza::Site
    def navigate_to_history_flow(params={})
      menu.click_menu("História")      
    end
  end
end
