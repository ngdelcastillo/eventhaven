require 'spec_helper'

describe "supplier_types/show" do
  before(:each) do
    @supplier_type = assign(:supplier_type, stub_model(SupplierType,
      :name => "Name",
      :details => "Details"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Details/)
  end
end
