require 'nokogiri'
require 'open-uri'

module Crawler

  module Tool
    def open_html url
      puts "start crawl:  #{url}"
      tries = 1
      begin
        tries += 1
        doc = Nokogiri::HTML(open(url))
      rescue Exception => ex
        puts ex.inspect
        if tries < 5
          sleep 2**tries
          retry
        end
      ensure
        doc
      end
    end
  
    def secure_open *args, &block
      tries = 1
      begin
        tries += 1
        f = open(*args, &block)
      rescue Exception => ex
        puts ex.inspect
        if tries < 2
          sleep 2**tries
          retry
        end
      ensure
        f
      end
    end
  
  end

end