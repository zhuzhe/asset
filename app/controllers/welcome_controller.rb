class WelcomeController < ApplicationController

	def index
		@covers = Cover.limit(10)
	end
end
