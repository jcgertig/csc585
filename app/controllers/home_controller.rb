class HomeController < ApplicationController
	def index
		if user_signed_in?
			if current_user.no_profile?
        redirect_to new_profile_path, notice: "Please fill in your profile information."
			elsif current_user.empty_fields?
        redirect_to edit_profile_path(current_user.profile), notice: "Please fill in your profile information."
			else
        redirect_to profile_path(current_user.profile)
			end	
		end
	end
end
