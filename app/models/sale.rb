class Sale < ApplicationRecord
  belongs_to :food_product
  belongs_to :menu_item

  def decrement_to_sell
    self.food_product.update_attribute("amount_ordered_",(food_product.amount_ordered_ - 1))
  end

  def decrement_amount_of_pans
    self.food_product.update_attribute("amount_of_pans",(food_product.amount_ordered_ / food_product.orders_per_pan_))
  end
  
end