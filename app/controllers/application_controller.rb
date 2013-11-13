class ApplicationController < ActionController::Base
  protect_from_forgery
  expose(:states) { State.by_name }
  expose(:counties) { County.by_name }
  expose(:types) { Type.all }
  expose(:contexts) { Context.by_name }
  expose(:periods) { Period.all }
end
