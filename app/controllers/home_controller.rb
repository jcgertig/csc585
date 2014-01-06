class HomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.no_profile?
        redirect_to new_profile_path, notice: "Please fill in your profile information."
      elsif current_user.empty_fields?
        redirect_to edit_profile_path(current_user.profile), notice: "Please fill in all required fields."
      end
    end
    @counties = County.all
  end

  def by_county
    @artifacts = Artifact.find_all_by_county(params[:county])
    @county = params[:county]
    @count = (@artifacts.count/6.0).ceil
    if @count > 1
      if !params[:start] || params[:start] == "0"
        @artifacts = @artifacts[0..5]
        @start = 0
      else 
        @artifacts = @artifacts[params[:start].to_i..((params[:start].to_i * 2) - 1)]
        @start = params[:start].to_i
      end
    end
  end
end
