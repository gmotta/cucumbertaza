# encoding: utf-8

require 'rubygems'
require 'taza/page'

module Espaco
  class HistoriaPage < ::Taza::Page
    element(:sub_heading)            { |name| browser.h1(:text => name) }

    def sub_heading_exists?(name)
      sub_heading(name).text.include? name
    end
  end
end
