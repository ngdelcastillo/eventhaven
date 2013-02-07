class Supplier
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps
  field :name, type: String
  field :type, type: String
  field :location, type: String
  has_mongoid_attached_file :poster, :styles => {:thumb => "80x80#", :medium => "220x165#", :large => "400x400#"}   

  #Relationships
  belongs_to :group
  has_many :prices
  has_many :booking
  
end
