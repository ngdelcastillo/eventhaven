class Booking
  include Mongoid::Document
  include Mongoid::Timestamps
  field :offset, type: Integer
  field :status, type: Integer #BookingStatus: 0 - Pending, 1 - Approved, 2 - Denied, 3 - Close
  
  # Customer is the one that comments here
  field :rating, type: Integer #Range of 1 - 5; 5 is the highest
  field :comment, type: String

  #Relationships
  belongs_to :service
  has_one :event
end
