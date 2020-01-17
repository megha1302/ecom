class Ordrproduct < ApplicationRecord
  belongs_to :product
  belongs_to :ordr
  attr_accessor :products_attributes
end
