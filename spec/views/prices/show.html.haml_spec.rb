require 'spec_helper'

describe "prices/show" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :offer => "Offer",
      :amount => 1.5,
      :currency => "Currency",
      :details => "Details"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Offer/)
    rendered.should match(/1.5/)
    rendered.should match(/Currency/)
    rendered.should match(/Details/)
  end
end
