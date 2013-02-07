require 'spec_helper'

describe "prices/edit" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :offer => "MyString",
      :amount => 1.5,
      :currency => "MyString",
      :details => "MyString"
    ))
  end

  it "renders the edit price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prices_path(@price), :method => "post" do
      assert_select "input#price_offer", :name => "price[offer]"
      assert_select "input#price_amount", :name => "price[amount]"
      assert_select "input#price_currency", :name => "price[currency]"
      assert_select "input#price_details", :name => "price[details]"
    end
  end
end
