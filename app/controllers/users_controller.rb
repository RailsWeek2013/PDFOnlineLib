class UsersController < ApplicationController
	before_action :authenticate_user!
	def profile
		if user_signed_in?
			@user = User.find(current_user)
			@favorites = Favorite.where("user_id_id = ?", current_user.id)

			render "users/profile"
		else
			render "pages/home"
		end
	end
end
