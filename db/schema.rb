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

ActiveRecord::Schema.define(:version => 20110128191220) do

  create_table "agencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", :force => true do |t|
    t.integer  "campaign_id"
    t.integer  "account_id"
    t.string   "name",            :limit => 100
    t.datetime "time_start"
    t.datetime "time_stop"
    t.integer  "daily_budget"
    t.integer  "campaign_status"
    t.integer  "lifetime_budget"
    t.integer  "agency_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  create_table "campaigns_creatives", :id => false, :force => true do |t|
    t.integer "campaign_id"
    t.integer "creative_id"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.integer  "agency_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creatives", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "body"
    t.string   "image"
    t.integer  "creative_id"
    t.string   "link_url"
    t.string   "iupreview_url"
    t.string   "ad_type"
    t.integer  "related_object_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  create_table "target_groups", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "agency_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
