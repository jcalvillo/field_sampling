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

ActiveRecord::Schema.define(version: 20170608031759) do

  create_table "location_sample_date", force: true do |t|
    t.integer "location_id"
    t.integer "sample_date_id"
  end

  create_table "locations", force: true do |t|
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "sample_time"
    t.string   "city"
    t.string   "ranch"
    t.string   "field"
    t.string   "site"
    t.string   "grower"
    t.string   "block_id"
    t.string   "variety"
    t.decimal  "acres"
    t.string   "client"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sample_dates", force: true do |t|
    t.date     "sample_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
