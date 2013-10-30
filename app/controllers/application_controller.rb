class ApplicationController < ActionController::Base
  protect_from_forgery
  expose(:states) { State.by_name }
end
