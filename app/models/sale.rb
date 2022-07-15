class Sale < ApplicationRecord
  belongs_to :food_product
  belongs_to :menu_item
end