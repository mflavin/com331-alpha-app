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

ActiveRecord::Schema.define(version: 2019_03_31_142706) do

  create_table "weight_reps", force: :cascade do |t|
    t.integer "numb_of_reps"
    t.integer "amount_of_weight"
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_weight_reps_on_workout_id"
  end

  create_table "weight_sets", force: :cascade do |t|
    t.integer "numb_of_sets"
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_weight_sets_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "workout_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
