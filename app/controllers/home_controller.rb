class HomeController < ApplicationController
	before_action :authenticate_user!

	def index 
		@accounts=current_user.accounts.last(5)
	end

	def dashborad
    	@data = Account.dashboard(current_user)
  	end
end
