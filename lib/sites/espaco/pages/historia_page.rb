# encoding: utf-8

require 'rubygems'
require 'taza/page'

module Espaco
  class HistoriaPage < ::Taza::Page
    element(:historia_link)         { browser.link(:text => 'História') }


  end
end
