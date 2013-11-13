class County < ActiveRecord::Base
  attr_accessible :name

  scope :by_name, order("name ASC")
end
