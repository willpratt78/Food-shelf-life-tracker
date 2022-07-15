class CreateFoodProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :food_products do |t|
      t.column(:food_, :string)
      t.column(:amount_ordered_, :integer)
      t.column(:amount_to_sell_, :integer)
      t.column(:amount_of_pans_, :integer)
      t.column(:orders_per_pan_, :integer)
      t.column(:date_ordered_, :datetime)
      t.column(:date_order_arrives_, :datetime)
      t.column(:soft_out_date_, :datetime)
      t.column(:hard_out_date_, :datetime)

      t.timestamps()
    end
  end
end
