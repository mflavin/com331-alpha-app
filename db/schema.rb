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

ActiveRecord::Schema.define(version: 2019_03_03_234814) do

  create_table "days", force: :cascade do |t|
    t.string "day_of_week"
    t.integer "days_id"
    t.integer "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["days_id"], name: "index_days_on_days_id"
    t.index ["week_id"], name: "index_days_on_week_id"
  end

  create_table "weeks", force: :cascade do |t|
    t.string "counting_week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weights", force: :cascade do |t|
    t.string "workout"
    t.integer "amount_of_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
