class Artifact < ActiveRecord::Base
  attr_accessible :context, :county, :desc, :lat, :lon, :period, :a_type, :user_id
  
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true
  attr_accessible :images_attributes
  belongs_to :user
  
end
