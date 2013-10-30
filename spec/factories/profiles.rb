# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    first_name "MyString"
    last_name "MyString"
    user_name "MyString"
    addr_line1 "MyString"
    addr_line2 "MyString"
    city "MyString"
    state "MyString"
    zipcode "MyString"
    phone "MyString"
    contact false
  end
end
