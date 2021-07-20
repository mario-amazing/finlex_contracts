class Contract
  include Mongoid::Document
  include Mongoid::Timestamps
  field :price, type: Float
  field :start_date, type: Date
  field :end_date, type: Date
  field :expiry_date, type: Date
  belongs_to :customer

  validates :price, :start_date, :end_date, presence: true
end
