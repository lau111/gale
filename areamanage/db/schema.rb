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

ActiveRecord::Schema.define(version: 20180127080012) do

  create_table "addresskarimasters", force: :cascade do |t|
    t.string "cardnumber"
    t.string "branchnumber"
    t.string "psnlarea"
    t.string "asgnministrator"
    t.string "asgnlimit"
    t.string "oldcardnumber"
    t.string "buildingname"
    t.string "roomnumber"
    t.string "unauthorized"
    t.string "servicestyle"
    t.string "officename"
    t.string "fstname"
    t.string "lstname"
    t.string "kananame"
    t.string "living"
    t.string "phone"
    t.string "household"
    t.string "gender"
    t.string "handicapped"
    t.string "homeday"
    t.string "hometime"
    t.text "memo"
    t.date "newtenantdate"
    t.string "vpname"
    t.date "vpdate"
    t.string "dltsign"
    t.date "dltdate"
    t.string "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["username"], name: "index_admins_on_username", unique: true
  end

  create_table "areacards", force: :cascade do |t|
    t.string "cardnumber"
    t.string "cardmin"
    t.string "cardmax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areanumbers", force: :cascade do |t|
    t.string "headsym"
    t.string "headsymname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
