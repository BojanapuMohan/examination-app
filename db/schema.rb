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

ActiveRecord::Schema.define(version: 20151001050215) do

  create_table "descriptive_questions", force: :cascade do |t|
    t.integer  "test_id"
    t.text     "description"
    t.text     "answer"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "question_type", default: "descriptive"
  end

  create_table "multiple_choice_questions", force: :cascade do |t|
    t.integer  "test_id"
    t.text     "description"
    t.string   "option_1"
    t.string   "option_2"
    t.string   "option_3"
    t.string   "option_4"
    t.string   "answer"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "question_type", default: "multiple_choice"
  end

  create_table "student_answers", force: :cascade do |t|
    t.integer  "student_test_id"
    t.string   "question_type"
    t.integer  "question_id"
    t.string   "answer"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "result"
  end

  create_table "student_tests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "test_id"
    t.string   "status"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "no_of_questions"
    t.integer  "no_of_correct_answers"
  end

  create_table "tests", force: :cascade do |t|
    t.string   "test_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
