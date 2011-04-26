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

ActiveRecord::Schema.define(:version => 20110426170431) do

  create_table "discussions", :force => true do |t|
    t.integer  "user_round_id"
    t.text     "argument"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headlines", :force => true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "published_at"
    t.integer  "user_round_id"
    t.text     "title"
    t.text     "guid"
    t.text     "url"
  end

  create_table "rounds", :force => true do |t|
    t.integer  "winner_id"
    t.integer  "judge_id"
    t.string   "topic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "finished"
  end

  create_table "user_rounds", :force => true do |t|
    t.integer  "user_id"
    t.integer  "round_id"
    t.text     "argument"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "played_headline"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
