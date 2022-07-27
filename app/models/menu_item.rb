class MenuItem < ApplicationRecord
  has_many :sales
  has_many :food_products, :through => :sales
  accepts_nested_attributes_for :sales, :food_products

  def decrement_to_sell
    self.food_products.all[0].update_columns(amount_to_sell_: (self.food_products.all[0].amount_to_sell_ - 1))
  end

  def decrement_amount_of_pans
    self.food_products.all[0].update_columns(amount_of_pans_: (self.food_products.all[0].amount_to_sell_ / self.food_products.all[0].orders_per_pan_.to_f).ceil)
  end
  
end