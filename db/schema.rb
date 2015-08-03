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

ActiveRecord::Schema.define(version: 20150802191136) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",               limit: 255, default: "", null: false
    t.string   "short_name",         limit: 255
    t.string   "ardress",            limit: 255, default: "", null: false
    t.string   "ardress_do_odsylki", limit: 255, default: "", null: false
    t.string   "email",              limit: 255
    t.string   "tel",                limit: 255
    t.string   "nip",                limit: 20,               null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "element_rmas", force: :cascade do |t|
    t.integer  "rma_id",           limit: 4
    t.integer  "lp",               limit: 4
    t.integer  "pn",               limit: 4
    t.integer  "sn",               limit: 4
    t.string   "producent",        limit: 255
    t.text     "opis_produktu",    limit: 65535
    t.datetime "data_sprzedazy"
    t.datetime "koniec_gwarancji"
    t.string   "rma_klienta",      limit: 255
    t.integer  "na_gwarancji",     limit: 4
    t.text     "opis_usterki",     limit: 65535
    t.text     "uwagi",            limit: 65535
    t.string   "zalocznik",        limit: 255
    t.datetime "data_przyjecia"
    t.datetime "data_naprawy"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "master_rmas", force: :cascade do |t|
    t.integer  "element_rma_id", limit: 4
    t.integer  "user_id",        limit: 4
    t.integer  "master",         limit: 4
    t.string   "czynnosci",      limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "producents", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "rmas", force: :cascade do |t|
    t.integer  "number",               limit: 4
    t.integer  "zgloszone",            limit: 4
    t.integer  "user_id",              limit: 4
    t.integer  "company_id",           limit: 4
    t.string   "contack_name_surname", limit: 255
    t.string   "tel",                  limit: 255
    t.string   "email",                limit: 255
    t.text     "opt_adres_wys",        limit: 65535
    t.datetime "data_zgloszenia"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "statistic_rmas", force: :cascade do |t|
    t.integer  "rma_id",                   limit: 4
    t.integer  "element_rma_id",           limit: 4
    t.integer  "company_id",               limit: 4
    t.integer  "producent_id",             limit: 4
    t.integer  "user_id",                  limit: 4
    t.datetime "data_zgloszenia"
    t.datetime "data_dostawy"
    t.datetime "data_przyjecia"
    t.datetime "data_wys_do_serwiu"
    t.datetime "data_pow_z_serwisu"
    t.datetime "data_naprawy"
    t.datetime "data_odsyłki"
    t.datetime "czas_naprawy_laczny"
    t.datetime "czas_przestoju_logistyka"
    t.datetime "czas_naprawy_csi"
    t.datetime "czas_napr_w_serwisie"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id",               limit: 4
    t.integer  "company_id",             limit: 4
    t.string   "name",                   limit: 255
    t.string   "lastname",               limit: 255
    t.string   "tel",                    limit: 20,               null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
