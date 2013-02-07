require 'spec_helper'

describe "supplier_types/new" do
  before(:each) do
    assign(:supplier_type, stub_model(SupplierType,
      :name => "MyString",
      :details => "MyString"
    ).as_new_record)
  end

  it "renders new supplier_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => supplier_types_path, :method => "post" do
      assert_select "input#supplier_type_name", :name => "supplier_type[name]"
      assert_select "input#supplier_type_details", :name => "supplier_type[details]"
    end
  end
end
