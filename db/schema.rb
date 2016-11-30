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

ActiveRecord::Schema.define(version: 20161130080551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.json     "value"
    t.integer  "question_id"
    t.boolean  "selected"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.integer  "question_type"
    t.boolean  "required"
    t.integer  "survey_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restrictions", force: :cascade do |t|
    t.integer  "gender"
    t.integer  "age_ub"
    t.integer  "age_lb"
    t.float    "loc_center_long"
    t.float    "loc_center_lat"
    t.integer  "loc_radius"
    t.integer  "num_takers"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "survey_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "survey_id"
    t.integer  "relationship"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "est_time"
    t.integer  "points"
    t.string   "url"
  end

  create_table "text_responses", force: :cascade do |t|
    t.json     "value"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.integer  "gender"
    t.boolean  "taker"
    t.boolean  "creator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
