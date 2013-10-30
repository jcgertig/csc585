class Artifact < ActiveRecord::Base
  attr_accessible :context, :county, :desc, :lat, :lon, :period, :type, :user_id
end
