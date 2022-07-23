class FoodProduct < ApplicationRecord
  has_many :sales
  has_many :menu_items, :through => :sales
  
  validates :food_, presence: true
  validates :amount_ordered_, presence: true
  validates :amount_to_sell_, presence: true
  validates :amount_of_pans_, presence: true
  validates :date_ordered_, presence: true
  validates :date_order_arrives_, presence: true
  validates :soft_out_date_, presence: true
  validates :hard_out_date_, presence: true
end
