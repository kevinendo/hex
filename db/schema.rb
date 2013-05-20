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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130520035313) do

  create_table "cards", :force => true do |t|
    t.string   "name"
    t.integer  "cost"
    t.integer  "threshold"
    t.string   "color"
    t.string   "card_type"
    t.string   "traits"
    t.integer  "restriction"
    t.integer  "faction"
    t.text     "game_text"
    t.text     "lore_text"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "release_id",      :default => 0
    t.integer  "rarity"
    t.integer  "number"
    t.boolean  "pve"
    t.string   "source"
    t.string   "image_main"
    t.string   "image_back"
    t.string   "image_alt_1"
    t.string   "image_alt_2"
    t.string   "image_foil"
    t.text     "rulings"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "related_card_id"
  end

  create_table "champions", :force => true do |t|
    t.string   "name"
    t.integer  "power1_type"
    t.text     "power1_game_text"
    t.integer  "power1_unlock",    :default => 5
    t.integer  "power2_type"
    t.text     "power2_game_text"
    t.integer  "power2_unlock",    :default => 10
    t.integer  "power3_type"
    t.text     "power3_game_text"
    t.integer  "power3_unlock",    :default => 15
    t.integer  "power4_type"
    t.text     "power4_game_text"
    t.integer  "power4_unlock",    :default => 20
    t.string   "image_main"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "item_name"
    t.integer  "card_id"
    t.string   "item_type"
    t.text     "game_text"
    t.text     "lore_text"
    t.integer  "set_card_id"
    t.integer  "rarity"
    t.string   "source"
    t.string   "image_main"
    t.text     "rulings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "releases", :force => true do |t|
    t.string   "release_name"
    t.string   "short_name"
    t.integer  "size"
    t.date     "release_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socket_gems", :force => true do |t|
    t.string   "gem_name"
    t.string   "gem_color"
    t.string   "gem_type"
    t.text     "game_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traits", :force => true do |t|
    t.string   "trait_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "traits", ["trait_name"], :name => "index_traits_on_trait_name", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.integer  "user_type",     :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
