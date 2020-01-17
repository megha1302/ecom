class Ordr < ApplicationRecord
  belongs_to :user
  belongs_to :address
  has_many :ordrproducts, dependent: :destroy
  has_many :products, through: :ordrproducts
  accepts_nested_attributes_for :ordrproducts
  accepts_nested_attributes_for :products 
end
