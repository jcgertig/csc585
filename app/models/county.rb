class County < ActiveRecord::Base
  attr_accessible :name, :poly

  scope :by_name, order("name ASC")
end
