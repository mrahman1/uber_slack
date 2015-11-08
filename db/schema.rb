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

ActiveRecord::Schema.define(version: 20151108003341) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorizations", force: :cascade do |t|
<<<<<<< HEAD
    t.integer  "user_id",          null: false
    t.string   "slack_auth_token", null: false
    t.string   "uber_auth_token",  null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "authorizations", ["slack_auth_token"], name: "index_authorizations_on_slack_auth_token", using: :btree
  add_index "authorizations", ["uber_auth_token"], name: "index_authorizations_on_uber_auth_token", using: :btree
  add_index "authorizations", ["user_id"], name: "index_authorizations_on_user_id", using: :btree
=======
    t.integer  "slack_user_id"
    t.string   "slack_auth_token"
    t.string   "oauth_session_token"
    t.integer  "uber_user_id"
    t.string   "uber_auth_token"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "authorizations", ["oauth_session_token"], name: "index_authorizations_on_oauth_session_token", using: :btree
  add_index "authorizations", ["slack_auth_token"], name: "index_authorizations_on_slack_auth_token", using: :btree
  add_index "authorizations", ["slack_user_id", "uber_user_id"], name: "index_authorizations_on_slack_user_id_and_uber_user_id", unique: true, using: :btree
  add_index "authorizations", ["uber_auth_token"], name: "index_authorizations_on_uber_auth_token", using: :btree
>>>>>>> 384f014cac3ccc318f719218ff58fe35cc81be1d

end
