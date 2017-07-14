class Coli < ActiveRecord::Base
  belongs_to :user
  
  validates :colis_type, presence: true
  validates :weight_colis, presence: true
  validates :price_colis, numericality: {only_integer: true, greater_than: 3}
  validates :summary, presence: true, length: {maximum: 600}
  validates :address_departume, presence: true
  validates :address_arrival, presence: true
  
end
