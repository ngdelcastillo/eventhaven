require 'spec_helper'

describe "managers/edit" do
  before(:each) do
    @manager = assign(:manager, stub_model(Manager,
      :assigned_by => "MyString"
    ))
  end

  it "renders the edit manager form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => managers_path(@manager), :method => "post" do
      assert_select "input#manager_assigned_by", :name => "manager[assigned_by]"
    end
  end
end
