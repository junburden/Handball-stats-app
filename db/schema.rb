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

ActiveRecord::Schema.define(version: 20160622091900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer  "home_id"
    t.integer  "away_id"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_id"], name: "index_games_on_away_id", using: :btree
    t.index ["home_id"], name: "index_games_on_home_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id", using: :btree
  end

  create_table "shots", force: :cascade do |t|
    t.boolean  "goal",       default: false
    t.boolean  "seven",      default: false
    t.float    "x_position"
    t.float    "y_position"
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "player_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["game_id"], name: "index_shots_on_game_id", using: :btree
    t.index ["player_id"], name: "index_shots_on_player_id", using: :btree
    t.index ["team_id"], name: "index_shots_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "teams", column: "away_id"
  add_foreign_key "games", "teams", column: "home_id"
  add_foreign_key "players", "teams"
  add_foreign_key "shots", "games"
  add_foreign_key "shots", "players"
  add_foreign_key "shots", "teams"
end