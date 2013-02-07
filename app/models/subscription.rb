class Subscription
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :price, type: Float
  field :currency, type: String

  #Relationships
  has_many :groups
end
