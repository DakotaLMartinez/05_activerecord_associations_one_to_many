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

ActiveRecord::Schema.define(version: 2021_07_23_201751) do

  create_table "computers", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.float "screen_size"
    t.integer "model_year"
    t.boolean "asleep"
    t.datetime "last_backed_up_at"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "breed"
    t.string "secret"
  end

end
