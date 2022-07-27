class Sale < ApplicationRecord
  belongs_to :food_product
  belongs_to :menu_item

  def decrement_to_sell
    self.food_products.all[0].update_columns(amount_to_sell_: (self.food_products.all[0].amount_to_sell_ - 1))
  end

  def decrement_amount_of_pans
    self.food_product.all[0].update_columns(amount_of_pans: (self.food_product.all[0].amount_to_sell_ / self.food_product.all[0].orders_per_pan_.to_f).ceil)
  end

end



