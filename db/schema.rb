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

ActiveRecord::Schema.define(:version => 20121123022802) do

  create_table "companies", :force => true do |t|
    t.string   "company_name"
    t.string   "signup_code"
    t.integer  "owner_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "job_submissions", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "question1_answer"
    t.integer  "joblisting_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "status"
    t.integer  "criteria"
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "joblistings", :force => true do |t|
    t.string   "job_name"
    t.string   "question1"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "stage"
    t.string   "description"
    t.date     "closing_date"
  end

  create_table "notes", :force => true do |t|
    t.string   "content"
    t.integer  "job_submission_id"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "ratings", :force => true do |t|
    t.string   "user_id"
    t.string   "job_submission_id"
    t.integer  "value"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "company_id"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin",                  :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
