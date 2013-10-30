class Artifact < ActiveRecord::Base
  belongs_to :user
  attr_accessible :uid, :context, :county, :desc, :lat, :lon, :period, :type
end
