class State < ActiveRecord::Base
  attr_accessible :name, :abbr

  scope :by_name, order("name ASC")
end
