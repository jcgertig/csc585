require 'spec_helper'

describe "profiles/index" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :first_name => "First Name",
        :last_name => "Last Name",
        :user_name => "User Name",
        :addr_line1 => "Addr Line1",
        :addr_line2 => "Addr Line2",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :phone => "Phone",
        :contact => false
      ),
      stub_model(Profile,
        :first_name => "First Name",
        :last_name => "Last Name",
        :user_name => "User Name",
        :addr_line1 => "Addr Line1",
        :addr_line2 => "Addr Line2",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :phone => "Phone",
        :contact => false
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Addr Line1".to_s, :count => 2
    assert_select "tr>td", :text => "Addr Line2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
