# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_17_153708) do

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.integer "quantity"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.integer "admin_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "brand"
    t.string "img"
    t.float "price"
    t.integer "admin_id"
    t.integer "category_id"
  end

  create_table "user_reviews", force: :cascade do |t|
    t.integer "product_id"
    t.integer "user_id"
    t.string "comment"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
  end

end
