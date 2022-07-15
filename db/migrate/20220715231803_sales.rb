class Sales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.belongs_to :food_product, index: true
      t.belongs_to :menu_item, index: true
      t.timestamps
    end
  end
end
