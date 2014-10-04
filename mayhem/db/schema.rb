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

ActiveRecord::Schema.define(version: 20141003222257) do

  create_table "comments", force: true do |t|
    t.string   "text"
    t.integer  "hypo_id"
    t.integer  "user_id"
    t.integer  "vote_count", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hypos", force: true do |t|
    t.string   "title"
    t.string   "law_name"
    t.date     "law_sponsor_date"
    t.string   "sponsor_name"
    t.string   "sponsor_city"
    t.string   "sponsor_state"
    t.string   "precip_amount"
    t.boolean  "is_tornado"
    t.boolean  "is_hurricane"
    t.boolean  "is_flood"
    t.integer  "vote_count",       default: 0
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "voteable_id"
    t.string   "voteable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
