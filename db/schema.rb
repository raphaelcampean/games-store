# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_03_19_154358) do
  create_table "developers", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", charset: "utf8mb3", force: :cascade do |t|
    t.string "title"
    t.decimal "price", precision: 10
    t.integer "year"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "genre_id", null: false
    t.bigint "platform_id", null: false
    t.bigint "developer_id", null: false
    t.index ["developer_id"], name: "index_games_on_developer_id"
    t.index ["genre_id"], name: "index_games_on_genre_id"
    t.index ["platform_id"], name: "index_games_on_platform_id"
  end

  create_table "games_platforms", id: false, charset: "utf8mb3", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "platform_id", null: false
    t.index ["game_id", "platform_id"], name: "index_games_platforms_on_game_id_and_platform_id"
    t.index ["platform_id", "game_id"], name: "index_games_platforms_on_platform_id_and_game_id"
  end

  create_table "genres", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "developers"
  add_foreign_key "games", "genres"
  add_foreign_key "games", "platforms"
end
