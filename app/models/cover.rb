class Cover < ActiveRecord::Base
	def absolute_url
		# "http://imanhua.com/#{self.url}"
		"http://icosplay.me/images/cos/origin/000/000/#{self.src.ljust(3, '0')}.jpg"
	end

	def id2 root
	    dir1, dir2, file = self.id.to_s.rjust(9, '0').scan(/\d{3}/)
	    Dir.mkdir(root.join(dir1)) unless File.directory?(root.join(dir1))
	    Dir.mkdir(root.join(dir1, dir2)) unless File.directory?(root.join(dir1, dir2))
	    root.join(dir1, dir2, file).to_s
	end

	
end
