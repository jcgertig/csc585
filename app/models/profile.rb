class Profile < ActiveRecord::Base
  attr_accessible :addr_line1, :addr_line2, :city,
                  :contact, :first_name, :last_name,
                  :phone, :state, :user_name, :zip_code, :user_id

  def empty_fields?
    if addr_line1 == "" || first_name == "" || last_name == "" || user_name == "" || phone == "" || zip_code == ""
      true
    else
      false
    end
  end
end
