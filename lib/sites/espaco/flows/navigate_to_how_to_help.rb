# encoding: utf-8

require 'rubygems'

module Espaco
  class Espaco < ::Taza::Site
    def navigate_to_how_to_help_flow(params={})
      menu.click_menu("Como ajudar?")
    end
  end
end
