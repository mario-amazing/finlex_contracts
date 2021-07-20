class Customer
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :address, type: String
  field :email, type: String

  validates :name, :address, :email, presence: true
end
