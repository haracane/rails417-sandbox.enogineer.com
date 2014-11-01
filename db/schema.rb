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

ActiveRecord::Schema.define(version: 20141025235033) do

  create_table "blog_posts", force: true do |t|
    t.integer  "user_id",                null: false
    t.string   "permalink",  limit: 64,  null: false
    t.string   "title",      limit: 128, null: false
    t.text     "content",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blog_posts", ["permalink"], name: "index_blog_posts_on_permalink", unique: true, using: :btree
  add_index "blog_posts", ["user_id"], name: "index_blog_posts_on_user_id", using: :btree

  create_table "blog_users", force: true do |t|
    t.string   "name",       limit: 32
    t.text     "profile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blog_users", ["name"], name: "index_blog_users_on_name", unique: true, using: :btree

  add_foreign_key "blog_posts", "blog_users", name: "blog_posts_user_id_fk", column: "user_id"

end
