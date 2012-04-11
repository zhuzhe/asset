require File.expand_path('../../crawler/imanhua.rb', __FILE__)

namespace :imanhua do
	task :crawl_cover => :environment do
		Crawler::Imanhua.new.crawl_cover
	end

	desc "download cover"
	task :download_cover => :environment do
		Crawler::Imanhua.new.download_cover
	end
end