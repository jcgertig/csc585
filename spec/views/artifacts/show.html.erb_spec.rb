require 'spec_helper'

describe "artifacts/show" do
  before(:each) do
    @artifact = assign(:artifact, stub_model(Artifact,
      :type => "Type",
      :period => "Period",
      :context => "Context",
      :county => "County",
      :lat => "Lat",
      :lon => "Lon",
      :desc => "MyText",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(/Period/)
    rendered.should match(/Context/)
    rendered.should match(/County/)
    rendered.should match(/Lat/)
    rendered.should match(/Lon/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
