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

ActiveRecord::Schema.define(version: 20160526194009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approvals", force: :cascade do |t|
    t.integer "member_id"
    t.integer "musician_id"
    t.boolean "approved",    default: false
  end

  create_table "bands", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "genre_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "musician_id"
    t.string   "poster"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id", using: :btree
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "band_id"
    t.integer  "position_id"
    t.integer  "musician_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "musician_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["musician_id"], name: "index_messages_on_musician_id", using: :btree

  create_table "musicians", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postalcode"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "avatar"
    t.text     "description"
    t.string   "youtube_url"
  end

  add_index "musicians", ["email"], name: "index_musicians_on_email", unique: true, using: :btree
  add_index "musicians", ["reset_password_token"], name: "index_musicians_on_reset_password_token", unique: true, using: :btree

  create_table "positions", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "musician_id"
    t.integer "position_id"
    t.integer "level"
    t.boolean "mainskill",   default: false
  end

  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "musicians"
end
