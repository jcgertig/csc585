class Profile < ActiveRecord::Base
  attr_accessible :addr_line1, :addr_line2, :city,
                  :contact, :first_name, :last_name,
                  :phone, :state, :user_name, :zip_code, :user_id
  belongs_to :user

  def empty_fields?
    if addr_line1 == "" || first_name == "" || last_name == "" || user_name == "" || zip_code == "" || city == "" || state == ""
      true
    else
      false
    end
  end
end
