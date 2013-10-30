class State < ActiveRecord::Base
  attr_accessible :name, :sbbr

  scope :by_name, order("name ASC")
end
