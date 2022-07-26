class MenuItem < ApplicationRecord
  has_many :sales
  has_many :food_products, :through => :sales
  accepts_nested_attributes_for :sales, :food_products
end