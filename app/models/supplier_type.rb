class SupplierType
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :details, type: String

  #Relationships
  has_many :suppliers
  has_and_belongs_to_many :event_types
end
