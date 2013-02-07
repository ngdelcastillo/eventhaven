class ServiceType
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :details, type: String

  #Relationships
  has_many :services
  has_and_belongs_to_many :event_types
end
