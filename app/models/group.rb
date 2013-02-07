class Group
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :type, type: String

  #Relationships
  has_many :members
  has_many :managers
  has_many :suppliers
  belongs_to :subscription
end
