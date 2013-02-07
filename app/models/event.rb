class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :planned_date, type: Date
  field :actual_date, type: Date
  field :type, type: String

  #Relationships
  belongs_to :booking
  belongs_to :customer
  belongs_to :event_type
end
