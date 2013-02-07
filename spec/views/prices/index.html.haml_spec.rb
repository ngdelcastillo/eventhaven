require 'spec_helper'

describe "prices/index" do
  before(:each) do
    assign(:prices, [
      stub_model(Price,
        :offer => "Offer",
        :amount => 1.5,
        :currency => "Currency",
        :details => "Details"
      ),
      stub_model(Price,
        :offer => "Offer",
        :amount => 1.5,
        :currency => "Currency",
        :details => "Details"
      )
    ])
  end

  it "renders a list of prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Offer".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
  end
end
