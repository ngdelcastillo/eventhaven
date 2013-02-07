require 'spec_helper'

describe "event_types/new" do
  before(:each) do
    assign(:event_type, stub_model(EventType,
      :name => "MyString",
      :details => "MyString"
    ).as_new_record)
  end

  it "renders new event_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => event_types_path, :method => "post" do
      assert_select "input#event_type_name", :name => "event_type[name]"
      assert_select "input#event_type_details", :name => "event_type[details]"
    end
  end
end
