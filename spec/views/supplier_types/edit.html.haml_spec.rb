require 'spec_helper'

describe "supplier_types/edit" do
  before(:each) do
    @supplier_type = assign(:supplier_type, stub_model(SupplierType,
      :name => "MyString",
      :details => "MyString"
    ))
  end

  it "renders the edit supplier_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => supplier_types_path(@supplier_type), :method => "post" do
      assert_select "input#supplier_type_name", :name => "supplier_type[name]"
      assert_select "input#supplier_type_details", :name => "supplier_type[details]"
    end
  end
end
