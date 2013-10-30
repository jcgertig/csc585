class Profile < ActiveRecord::Base
  attr_accessible :addr_line1, :addr_line2, :city, 
                  :contact, :first_name, :last_name,
                  :phone, :state, :user_name, :zipcode, :user_id

  belongs_to :user

  def has_empty_fields?
    if addr_line1 == "" || city == "" || first_name == "" || last_name == "" || state == "" || user_name == "" || zipcode == ""
      true
    else 
      false
    end
  end
end
