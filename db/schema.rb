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

ActiveRecord::Schema[8.0].define(version: 2024_11_23_161012) do
  create_table "games", force: :cascade do |t|
    t.string "name"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.integer "receiver_id"
    t.integer "game_id"
    t.index ["game_id"], name: "index_participants_on_game_id"
    t.index ["receiver_id"], name: "index_participants_on_receiver_id"
  end

  add_foreign_key "participants", "games"
  add_foreign_key "participants", "participants", column: "receiver_id"
end
