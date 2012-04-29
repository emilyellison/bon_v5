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

ActiveRecord::Schema.define(:version => 20120429230928) do

  create_table "beers", :force => true do |t|
    t.string   "name"
    t.string   "brewer"
    t.string   "city"
    t.string   "state"
    t.string   "region"
    t.string   "country"
    t.integer  "sweet"
    t.integer  "bitter"
    t.integer  "sour"
    t.integer  "chocolate"
    t.integer  "nutty"
    t.integer  "fruity"
    t.integer  "floral"
    t.integer  "coffee"
    t.integer  "light"
    t.integer  "medium"
    t.integer  "dark"
    t.integer  "smooth"
    t.integer  "hoppy"
    t.integer  "spicy"
    t.integer  "tart"
    t.integer  "citrus"
    t.integer  "creamy"
    t.integer  "vanilla"
    t.integer  "acidic"
    t.integer  "smoky"
    t.integer  "cloves"
    t.integer  "crisp"
    t.integer  "rich"
    t.integer  "ibu"
    t.float    "abv"
    t.integer  "srm"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
