class Sale < ApplicationRecord
  belongs_to :food_product
  belongs_to :menu_item

  def decrement_to_sell
    self.food_products.all[0].update_columns(amount_to_sell_: (t1.food_products.all[0].amount_to_sell_ - 1))
  end

  def decrement_amount_of_pans
    self.food_product.update_attribute("amount_of_pans",(food_product.amount_ordered_ / food_product.orders_per_pan_))
  end

end

