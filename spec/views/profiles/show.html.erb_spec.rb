require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/User Name/)
    rendered.should match(/Addr Line1/)
    rendered.should match(/Addr Line2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zipcode/)
    rendered.should match(/Phone/)
    rendered.should match(/false/)
  end
end
