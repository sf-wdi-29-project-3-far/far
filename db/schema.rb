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

ActiveRecord::Schema.define(version: 20160629231807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arts", force: :cascade do |t|
    t.boolean  "dancing"
    t.boolean  "painting"
    t.boolean  "photography"
    t.boolean  "singing"
    t.boolean  "theatre"
    t.boolean  "writing"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: :cascade do |t|
    t.boolean  "thai"
    t.boolean  "italian"
    t.boolean  "mexican"
    t.boolean  "japanese"
    t.boolean  "chinese"
    t.boolean  "greek"
    t.boolean  "spanish"
    t.boolean  "indian"
    t.boolean  "korean"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer  "friendable_id"
    t.string   "friendable_type"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blocker_id"
    t.integer  "status"
  end

  create_table "matches", force: :cascade do |t|
    t.string   "origin_country"
    t.string   "current_country"
    t.integer  "age"
    t.boolean  "male"
    t.boolean  "female"
    t.boolean  "other_gender"
    t.string   "language"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.text     "interests",       default: [],              array: true
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.boolean  "read",            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "musics", force: :cascade do |t|
    t.boolean  "pop"
    t.boolean  "rock"
    t.boolean  "country"
    t.boolean  "classical"
    t.boolean  "jazz"
    t.boolean  "blues"
    t.boolean  "folk"
    t.boolean  "randb"
    t.boolean  "alternative"
    t.boolean  "dance"
    t.boolean  "latin"
    t.boolean  "HipHop_Rap"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sports", force: :cascade do |t|
    t.boolean  "soccer"
    t.boolean  "football"
    t.boolean  "basketball"
    t.boolean  "tennis"
    t.boolean  "rugby"
    t.boolean  "F1"
    t.boolean  "boxing"
    t.boolean  "golf"
    t.boolean  "baseball"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "current_city"
    t.string   "origin_city"
    t.integer  "age"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "art_id"
    t.integer  "music_id"
    t.integer  "food_id"
    t.integer  "sport_id"
    t.string   "occupation"
    t.string   "origin_country"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "snapchat_url"
    t.text     "description"
    t.text     "why_am_i_here"
    t.text     "hobbies"
    t.string   "photo_url"
    t.boolean  "male"
    t.boolean  "female"
    t.boolean  "other_gender"
    t.text     "languages",       default: [],              array: true
    t.text     "interests",       default: [],              array: true
    t.integer  "count",           default: 0
    t.string   "current_country"
  end

  add_index "users", ["art_id"], name: "index_users_on_art_id", using: :btree
  add_index "users", ["food_id"], name: "index_users_on_food_id", using: :btree
  add_index "users", ["music_id"], name: "index_users_on_music_id", using: :btree
  add_index "users", ["sport_id"], name: "index_users_on_sport_id", using: :btree

  add_foreign_key "users", "arts"
  add_foreign_key "users", "foods"
  add_foreign_key "users", "musics"
  add_foreign_key "users", "sports"
end
