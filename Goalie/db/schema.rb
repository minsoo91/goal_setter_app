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

ActiveRecord::Schema.define(version: 20141104010514) do

  create_table "comments", force: true do |t|
    t.string   "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goal_comments", force: true do |t|
    t.string   "body",       null: false
    t.integer  "goal_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "goal_comments", ["goal_id"], name: "index_goal_comments_on_goal_id"

  create_table "goals", force: true do |t|
    t.string   "statement",                    null: false
    t.integer  "user_id",                      null: false
    t.boolean  "private_goal", default: false
    t.boolean  "completed",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "goals", ["user_id"], name: "index_goals_on_user_id"

  create_table "user_comments", force: true do |t|
    t.string   "body",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_comments", ["user_id"], name: "index_user_comments_on_user_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "session_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
