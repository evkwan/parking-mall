class MallsController < ApplicationController

	def home
	    # Empty  method. With empty method, it directly generates the view that has been routed in routes.rb!
	    # The view must exists in views/ though
	
    	@malls = Mall.order(:name)

	end

end
