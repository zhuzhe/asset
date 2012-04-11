require File.expand_path('../tool.rb', __FILE__)

module Crawler

	class Imanhua

		include Tool
	
		def crawl_cover
			(1..1000).each do |i|
				url = "http://imanhua.com/comic/#{i}"
				next if Cover.find_by_url(url)
				@doc = open_html(url)
				next if @doc.nil?
				img = @doc.css('.bookCover img').first
				if img
				   Cover.create(:url => img['src'], :src => i)
				   puts img['src']
				end
				sleep 2.5
			end
		end

		def download_cover
			Cover.find_each do |c|
				secure_open(c.absolute_url) do |f|
				  File.open(c.id2(Pathname.new("/home/belen/Pictures/commics")) + ".jpg", "w") do |new_file|
				    new_file.write f.read
				  end
				end
				puts "corver - #{c.id} : already download"
			end
		end
		
	end

end