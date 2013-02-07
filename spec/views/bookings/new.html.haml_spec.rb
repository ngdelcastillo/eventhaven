require 'spec_helper'

describe "bookings/new" do
  before(:each) do
    assign(:booking, stub_model(Booking,
      :offset => ""
    ).as_new_record)
  end

  it "renders new booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookings_path, :method => "post" do
      assert_select "input#booking_offset", :name => "booking[offset]"
    end
  end
end
