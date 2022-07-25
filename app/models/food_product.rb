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



  def alert_soft_out_date
    if (self.soft_out_date_).to_i - (Time.new).to_i = 2
       twilio gem syntax to send email/text to desired people that its 2 days before soft out date
    elsif (self.soft_out_date_).to_i - (Time.new).to_i = 0
      twilio gem soft out date
    end
  end

  def alert_hard_out_date
    if (self.hard_out_date_).to_i - (Time.new).to_i < 0
      destroy food item      
    elsif (self.hard_out_date_).to_i - (Time.new).to_i = 0
      twilio gem today is last day to sell item
    elsif (self.hard_out_date_).to_i - (Time.new).to_i = 1
      twilio gem synbtax send email/text to desired people second to last day to sell
  end
end


