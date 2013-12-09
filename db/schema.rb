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

ActiveRecord::Schema.define(version: 20131209131607) do

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "author"
    t.text     "description"
    t.datetime "date_relaese"
    t.integer  "number_of_page"
    t.integer  "number_of_rate"
    t.boolean  "featured"
    t.string   "link_picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_books", force: true do |t|
    t.integer  "category_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_files", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "reviewer_name"
    t.string   "reviewer_email"
    t.datetime "date"
    t.integer  "book_id"
    t.string   "reviewer_ip"
    t.boolean  "approval"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
