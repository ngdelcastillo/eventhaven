require 'spec_helper'

describe "prices/new" do
  before(:each) do
    assign(:price, stub_model(Price,
      :offer => "MyString",
      :amount => 1.5,
      :currency => "MyString",
      :details => "MyString"
    ).as_new_record)
  end

  it "renders new price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prices_path, :method => "post" do
      assert_select "input#price_offer", :name => "price[offer]"
      assert_select "input#price_amount", :name => "price[amount]"
      assert_select "input#price_currency", :name => "price[currency]"
      assert_select "input#price_details", :name => "price[details]"
    end
  end
end
