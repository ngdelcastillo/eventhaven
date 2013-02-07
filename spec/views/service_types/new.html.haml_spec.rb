require 'spec_helper'

describe "service_types/new" do
  before(:each) do
    assign(:service_type, stub_model(ServiceType,
      :name => "MyString",
      :details => "MyString"
    ).as_new_record)
  end

  it "renders new service_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_types_path, :method => "post" do
      assert_select "input#service_type_name", :name => "service_type[name]"
      assert_select "input#service_type_details", :name => "service_type[details]"
    end
  end
end
