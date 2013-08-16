class UsersController < ApplicationController
	def profile
		if user_signed_in?
			@user = User.find(current_user).user_name
			render "users/profile"
		else
			render "pages/home"
		end
	end
end
