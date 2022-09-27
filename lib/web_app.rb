require 'optparse'
require 'bundler/setup'
require 'nokogiri'
require 'open-uri'
require 'dotenv/load'

require_relative 'web_app/reader.rb'
require_relative 'wa_tools.rb'

module WebApp

  def self.execute!
    options = derive_options({})

    if options['tool']
      WaTools.call(options)
    end

  end
end

WebApp.execute!