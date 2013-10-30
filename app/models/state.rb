class State < ActiveRecord::Base
  attr_accessible :abbr, :name

  scope :by_name, order("name ASC")
end
