require 'spec_helper'

describe "bookings/edit" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :offset => ""
    ))
  end

  it "renders the edit booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookings_path(@booking), :method => "post" do
      assert_select "input#booking_offset", :name => "booking[offset]"
    end
  end
end
