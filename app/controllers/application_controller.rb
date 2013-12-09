class ApplicationController < ActionController::Base
  protect_from_forgery
  expose(:states) { State.by_name }
  expose(:counties) { County.by_name }
  expose(:types) { Type.all }
  expose(:contexts) { Context.all }
  expose(:periods) { Period.all }

  def authenticate_admin_user!
   redirect_to new_user_session_path unless current_user.try(:is_admin?) 
  end
end
