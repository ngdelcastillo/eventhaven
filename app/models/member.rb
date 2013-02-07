class Member
  include Mongoid::Document
  include Mongoid::Timestamps
  field :assigned_by, type: String
  field :assigned_on, type: Date

  ## Relationships
  belongs_to :user
  belongs_to :group
end
