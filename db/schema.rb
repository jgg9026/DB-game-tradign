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

ActiveRecord::Schema.define(version: 20150906191739) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorizations", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "game_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "categorizations", ["category_id"], name: "index_categorizations_on_category_id"
  add_index "categorizations", ["game_id"], name: "index_categorizations_on_game_id"

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "exchange_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "comments", ["exchange_id"], name: "index_comments_on_exchange_id"

  create_table "exchange_records", force: :cascade do |t|
    t.integer  "user_game_id"
    t.integer  "exchange_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "exchange_records", ["exchange_id"], name: "index_exchange_records_on_exchange_id"
  add_index "exchange_records", ["user_game_id"], name: "index_exchange_records_on_user_game_id"

  create_table "exchanges", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user1_id"
    t.integer  "user2_id"
    t.string   "request_status"
  end

  add_index "exchanges", ["user_id"], name: "index_exchanges_on_user_id"

  create_table "game_platforms", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "platform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "game_platforms", ["game_id"], name: "index_game_platforms_on_game_id"
  add_index "game_platforms", ["platform_id"], name: "index_game_platforms_on_platform_id"

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "maker"
    t.string   "launch_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string   "platform"
    t.string   "console"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "rate"
    t.integer  "exchange_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "rates", ["exchange_id"], name: "index_rates_on_exchange_id"

  create_table "user_games", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "condition"
  end

  add_index "user_games", ["game_id"], name: "index_user_games_on_game_id"
  add_index "user_games", ["user_id"], name: "index_user_games_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "nickname"
    t.string   "token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
