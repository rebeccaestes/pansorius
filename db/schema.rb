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

ActiveRecord::Schema.define(version: 20160210212002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experiences", force: :cascade do |t|
    t.string   "role"
    t.string   "company"
    t.string   "start_date"
    t.string   "end_date"
    t.text     "description"
    t.integer  "profile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "experiences", ["profile_id"], name: "index_experiences_on_profile_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "role"
    t.text     "quote"
    t.text     "insights"
    t.text     "image_url"
    t.string   "location"
    t.string   "name"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "avatar"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skilltaggings", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "skilltaggings", ["profile_id"], name: "index_skilltaggings_on_profile_id", using: :btree
  add_index "skilltaggings", ["skill_id"], name: "index_skilltaggings_on_skill_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "values", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "valuetaggings", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "value_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "valuetaggings", ["profile_id"], name: "index_valuetaggings_on_profile_id", using: :btree
  add_index "valuetaggings", ["value_id"], name: "index_valuetaggings_on_value_id", using: :btree

  add_foreign_key "experiences", "profiles"
  add_foreign_key "profiles", "users"
end
