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

ActiveRecord::Schema.define(version: 20190612113434) do

  create_table "candidates", force: :cascade do |t|
    t.string   "name"
    t.string   "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "electorate"
    t.integer  "party_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voters", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.boolean  "voted"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.datetime "dob"
    t.text     "preferences", default: "--- []\n"
  end

  create_table "votes", force: :cascade do |t|
    t.boolean  "aboveline"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "belongs_to"
    t.text     "preferences", default: "--- []\n"
  end

end
