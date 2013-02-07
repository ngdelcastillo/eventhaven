class Customer
  include Mongoid::Document
  include Mongoid::Timestamps

  # Supplier is the one that comments here
  field :rating, type: Integer #Range of 1 - 5; 5 is the highest
  field :comment, type: String

  #Relationships
  belongs_to :user
  has_many :events
end
