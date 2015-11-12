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

ActiveRecord::Schema.define(version: 20151112164403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "name"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "colours", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "trainer_id"
  end

  add_index "images", ["trainer_id"], name: "index_images_on_trainer_id", using: :btree

  create_table "trainer_colours", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "trainer_id"
    t.integer  "colour_id"
  end

  add_index "trainer_colours", ["colour_id"], name: "index_trainer_colours_on_colour_id", using: :btree
  add_index "trainer_colours", ["trainer_id"], name: "index_trainer_colours_on_trainer_id", using: :btree

  create_table "trainers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "category_id"
    t.decimal  "price"
    t.string   "link"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "published"
    t.integer  "brand_id"
  end

  add_index "trainers", ["brand_id"], name: "index_trainers_on_brand_id", using: :btree
  add_index "trainers", ["category_id"], name: "index_trainers_on_category_id", using: :btree

  add_foreign_key "images", "trainers"
  add_foreign_key "trainer_colours", "colours"
  add_foreign_key "trainer_colours", "trainers"
  add_foreign_key "trainers", "brands"
  add_foreign_key "trainers", "categories"
end
