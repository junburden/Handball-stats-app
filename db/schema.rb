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

ActiveRecord::Schema.define(version: 20161229004107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer  "home_id"
    t.integer  "away_id"
    t.date     "date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "tournament_id"
    t.index ["away_id"], name: "index_games_on_away_id", using: :btree
    t.index ["home_id"], name: "index_games_on_home_id", using: :btree
    t.index ["tournament_id"], name: "index_games_on_tournament_id", using: :btree
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "player_id"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "position"
    t.boolean  "active"
    t.index ["player_id"], name: "index_memberships_on_player_id", using: :btree
    t.index ["team_id"], name: "index_memberships_on_team_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "shots", force: :cascade do |t|
    t.boolean  "goal",              default: false
    t.boolean  "seven",             default: false
    t.float    "x_position"
    t.float    "y_position"
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "shooter_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "goalie_id"
    t.integer  "shooter_x_pos"
    t.integer  "shooter_z_pos"
    t.integer  "defending_team_id"
    t.index ["defending_team_id"], name: "index_shots_on_defending_team_id", using: :btree
    t.index ["game_id"], name: "index_shots_on_game_id", using: :btree
    t.index ["goalie_id"], name: "index_shots_on_goalie_id", using: :btree
    t.index ["shooter_id"], name: "index_shots_on_shooter_id", using: :btree
    t.index ["team_id"], name: "index_shots_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.integer  "league_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_tournaments_on_league_id", using: :btree
  end

  add_foreign_key "games", "teams", column: "away_id"
  add_foreign_key "games", "teams", column: "home_id"
  add_foreign_key "games", "tournaments"
  add_foreign_key "memberships", "players"
  add_foreign_key "memberships", "teams"
  add_foreign_key "shots", "games"
  add_foreign_key "shots", "players", column: "shooter_id"
  add_foreign_key "shots", "teams"
  add_foreign_key "shots", "teams", column: "defending_team_id"
  add_foreign_key "tournaments", "leagues"
end
