class Artifact < ActiveRecord::Base
  attr_accessible :context, :county, :desc, :lat, :lon, :period, :a_type, :user_id

  belongs_to :user;
  
end
