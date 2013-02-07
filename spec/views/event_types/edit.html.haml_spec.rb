require 'spec_helper'

describe "event_types/edit" do
  before(:each) do
    @event_type = assign(:event_type, stub_model(EventType,
      :name => "MyString",
      :details => "MyString"
    ))
  end

  it "renders the edit event_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => event_types_path(@event_type), :method => "post" do
      assert_select "input#event_type_name", :name => "event_type[name]"
      assert_select "input#event_type_details", :name => "event_type[details]"
    end
  end
end
