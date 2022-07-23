class MenuItem < ApplicationRecord
  has_many :sales
  has_many :food_products, :through => :sales

end