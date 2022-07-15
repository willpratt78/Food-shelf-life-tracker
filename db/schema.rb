# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_15_154101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_products", force: :cascade do |t|
    t.string "food_"
    t.integer "amount_ordered_"
    t.integer "amount_to_sell_"
    t.integer "amount_of_pans_"
    t.integer "orders_per_pan_"
    t.datetime "date_ordered_"
    t.datetime "date_order_arrives_"
    t.datetime "soft_out_date_"
    t.datetime "hard_out_date_"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name_"
    t.string "food_item1_"
    t.string "food_item2_"
    t.string "food_item3_"
  end

end
