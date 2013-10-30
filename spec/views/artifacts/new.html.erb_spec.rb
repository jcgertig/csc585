require 'spec_helper'

describe "artifacts/new" do
  before(:each) do
    assign(:artifact, stub_model(Artifact,
      :type => "",
      :period => "MyString",
      :context => "MyString",
      :county => "MyString",
      :lat => "MyString",
      :lon => "MyString",
      :desc => "MyText",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new artifact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artifacts_path, "post" do
      assert_select "input#artifact_type[name=?]", "artifact[type]"
      assert_select "input#artifact_period[name=?]", "artifact[period]"
      assert_select "input#artifact_context[name=?]", "artifact[context]"
      assert_select "input#artifact_county[name=?]", "artifact[county]"
      assert_select "input#artifact_lat[name=?]", "artifact[lat]"
      assert_select "input#artifact_lon[name=?]", "artifact[lon]"
      assert_select "textarea#artifact_desc[name=?]", "artifact[desc]"
      assert_select "input#artifact_user_id[name=?]", "artifact[user_id]"
    end
  end
end
