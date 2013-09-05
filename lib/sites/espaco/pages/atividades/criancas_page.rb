# encoding: utf-8

require 'rubygems'
require 'taza/page'

module Espaco
  class CriancasPage < ::Taza::Page

  	element(:educacao_por_principios)                    { browser.link(:text => 'Educação por Princípios')} 

  end
end
