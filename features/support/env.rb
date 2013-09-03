$LOAD_PATH << File.expand_path('../../../lib/sites', __FILE__)
require 'rubygems'
require 'cucumber'
require 'taza'
require 'espaco'
require 'watir-webdriver'


ENV["TAZA_ENV"] ||= 'isolation'

(ENV['BROWSER'] ||= 'firefox').downcase



module Taza
  class Browser
    def self.create_watir_webdriver(params)
      driver = Selenium::WebDriver.for params[:browser].to_sym, :profile => params[:profile]
      Watir::Browser.new(driver)
    end
  end


end
