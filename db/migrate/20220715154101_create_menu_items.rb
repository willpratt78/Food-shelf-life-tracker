class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.column(:name_, :string)
      t.column(:food_item1_, :string)
      t.column(:food_item2_, :string)
      t.column(:food_item3_, :string)
    end
  end
end
