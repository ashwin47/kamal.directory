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

ActiveRecord::Schema[7.1].define(version: 2023_12_24_182233) do
# Could not dump table "app_gems" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "favorites" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "gemfile_app_gems" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "gemfiles" because of following StandardError
#   Unknown type 'uuid' for column 'id'

  create_table "kamalfiles", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.string "name"
    t.string "app_link"
    t.string "github_link"
    t.integer "accessories_count"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "server_count"
    t.integer "accessory_count"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'uuid' for column 'id'

  add_foreign_key "favorites", "users"
  add_foreign_key "gemfile_app_gems", "app_gems"
  add_foreign_key "gemfile_app_gems", "gemfiles"
  add_foreign_key "gemfiles", "users"
end
