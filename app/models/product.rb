class Product < ApplicationRecord

    attr_accessor :ordrs_attributes, :ordrproducts_attributes
    has_many :ordrproducts, dependent: :destroy
    has_many :ordrs , through: :ordrproducts
    
    def self.search(search)
        if search
            where(["name LIKE?","%#{search}%"])
        else
            all
        end
    end 
end
