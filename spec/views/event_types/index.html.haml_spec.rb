require 'spec_helper'

describe "event_types/index" do
  before(:each) do
    assign(:event_types, [
      stub_model(EventType,
        :name => "Name",
        :details => "Details"
      ),
      stub_model(EventType,
        :name => "Name",
        :details => "Details"
      )
    ])
  end

  it "renders a list of event_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
  end
end
