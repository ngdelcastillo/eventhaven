class Group
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps
  field :name, type: String
  field :type, type: String
  has_mongoid_attached_file :poster, :styles => {:thumb => "80x80#", :medium => "220x165#", :large => "400x400#"}   

  #Relationships
  has_many :members
  has_many :managers
  has_many :services
  belongs_to :subscription
end
