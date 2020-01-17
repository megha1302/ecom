class Product < ApplicationRecord
    attr_accessor :orders_attributes, :orderproducts_attributes
    has_many :orderproducts, dependent: :destroy
    has_many :orders , through: :orderproducts
    
    def self.search(search)
        if search
            where(["name LIKE?","%#{search}%"])
        else
            all
        end
    end 
end
