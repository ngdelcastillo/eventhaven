require 'spec_helper'

describe "subscriptions/index" do
  before(:each) do
    assign(:subscriptions, [
      stub_model(Subscription,
        :name => "Name",
        :price => 1.5,
        :currency => "Currency"
      ),
      stub_model(Subscription,
        :name => "Name",
        :price => 1.5,
        :currency => "Currency"
      )
    ])
  end

  it "renders a list of subscriptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
  end
end
