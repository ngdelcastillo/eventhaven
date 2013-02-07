class Price
  include Mongoid::Document
  include Mongoid::Timestamps
  field :offer, type: String
  field :amount, type: Float
  field :currency, type: String
  field :details, type: String

  #Relationships
  belongs_to :supplier
end
