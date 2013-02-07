class EventType
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String #Event types: Birthday, Wedding, Anniversary..
  field :details, type: String

  #Relationships
  has_many :events
  has_and_belongs_to_many :supplier_types
end
