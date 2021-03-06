# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150312233357) do

  create_table "cards", force: true do |t|
    t.string   "question"
    t.string   "answer_1"
    t.string   "answer_2"
    t.string   "answer_3"
    t.string   "answer_4"
    t.string   "answer_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards_decks", force: true do |t|
    t.string   "deck_id"
    t.string   "card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "decks", force: true do |t|
    t.string   "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performances", force: true do |t|
    t.string   "cards_deck_id"
    t.boolean  "correct"
    t.string   "previous_card_id"
    t.string   "certainty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "google_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
