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

ActiveRecord::Schema.define(version: 2021_04_19_185641) do

  create_table "attractions", force: :cascade do |t|
    t.string "name"
    t.string "igUrl"
    t.string "ytUrl"
    t.string "imageUrl"
    t.text "info"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.string "classification"
    t.text "info"
    t.float "priceMin"
    t.float "priceMax"
    t.string "imageUrl"
    t.integer "venue_id"
    t.string "venueName"
    t.integer "attraction_id"
    t.index ["attraction_id"], name: "index_events_on_attraction_id"
    t.index ["venue_id"], name: "index_events_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "imageUrl"
    t.string "city"
    t.string "state"
    t.string "address"
  end

end
