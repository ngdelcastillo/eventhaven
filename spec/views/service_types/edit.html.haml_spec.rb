require 'spec_helper'

describe "service_types/edit" do
  before(:each) do
    @service_type = assign(:service_type, stub_model(ServiceType,
      :name => "MyString",
      :details => "MyString"
    ))
  end

  it "renders the edit service_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_types_path(@service_type), :method => "post" do
      assert_select "input#service_type_name", :name => "service_type[name]"
      assert_select "input#service_type_details", :name => "service_type[details]"
    end
  end
end
