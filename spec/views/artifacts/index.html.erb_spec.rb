require 'spec_helper'

describe "artifacts/index" do
  before(:each) do
    assign(:artifacts, [
      stub_model(Artifact,
        :type => "Type",
        :period => "Period",
        :context => "Context",
        :county => "County",
        :lat => "Lat",
        :lon => "Lon",
        :desc => "MyText",
        :user_id => 1
      ),
      stub_model(Artifact,
        :type => "Type",
        :period => "Period",
        :context => "Context",
        :county => "County",
        :lat => "Lat",
        :lon => "Lon",
        :desc => "MyText",
        :user_id => 1
      )
    ])
  end

  it "renders a list of artifacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Period".to_s, :count => 2
    assert_select "tr>td", :text => "Context".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "Lat".to_s, :count => 2
    assert_select "tr>td", :text => "Lon".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
