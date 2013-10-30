require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :first_name => "MyString",
      :last_name => "MyString",
      :user_name => "MyString",
      :addr_line1 => "MyString",
      :addr_line2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString",
      :phone => "MyString",
      :contact => false
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do
      assert_select "input#profile_first_name[name=?]", "profile[first_name]"
      assert_select "input#profile_last_name[name=?]", "profile[last_name]"
      assert_select "input#profile_user_name[name=?]", "profile[user_name]"
      assert_select "input#profile_addr_line1[name=?]", "profile[addr_line1]"
      assert_select "input#profile_addr_line2[name=?]", "profile[addr_line2]"
      assert_select "input#profile_city[name=?]", "profile[city]"
      assert_select "input#profile_state[name=?]", "profile[state]"
      assert_select "input#profile_zipcode[name=?]", "profile[zipcode]"
      assert_select "input#profile_phone[name=?]", "profile[phone]"
      assert_select "input#profile_contact[name=?]", "profile[contact]"
    end
  end
end
