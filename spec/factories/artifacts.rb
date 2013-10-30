# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artifact do
    type ""
    period "MyString"
    context "MyString"
    county "MyString"
    lat "MyString"
    lon "MyString"
    desc "MyText"
    user_id 1
  end
end
