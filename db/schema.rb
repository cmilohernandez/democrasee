# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100325015306) do

  create_table "bills", :force => true do |t|
    t.text     "content"
    t.string   "sponsors"
    t.date     "intro_date"
    t.string   "status"
    t.text     "abstract"
    t.string   "bill_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills_congressmen", :id => false, :force => true do |t|
    t.integer "bill_id"
    t.integer "congressman_id"
  end

  create_table "congressmen", :force => true do |t|
    t.string   "name"
    t.string   "district"
    t.string   "party"
    t.string   "email"
    t.string   "phone_number"
    t.string   "twitter"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sentences", :force => true do |t|
    t.boolean  "isRaw"
    t.text     "text"
    t.integer  "votes_up"
    t.integer  "votes_down"
    t.integer  "flag_votes"
    t.integer  "user_id"
    t.integer  "sentence_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bill_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "username"
    t.string   "political_affiliation"
    t.boolean  "male"
    t.date     "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",    :limit => 128
    t.string   "salt",                  :limit => 128
    t.string   "confirmation_token",    :limit => 128
    t.string   "remember_token",        :limit => 128
    t.boolean  "email_confirmed",                      :default => false, :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["id", "confirmation_token"], :name => "index_users_on_id_and_confirmation_token"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "votes", :force => true do |t|
    t.date     "date"
    t.string   "ynea"
    t.integer  "bill_id"
    t.integer  "congressman_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
