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

ActiveRecord::Schema.define(version: 2021_11_02_162933) do

  create_table "balance_sheets", force: :cascade do |t|
    t.integer "datawrapper_id", null: false
    t.integer "statement_data_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["datawrapper_id"], name: "index_balance_sheets_on_datawrapper_id"
    t.index ["statement_data_id"], name: "index_balance_sheets_on_statement_data_id"
  end

  create_table "cash_flows", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "datawrappers", force: :cascade do |t|
    t.string "dataCode"
    t.float "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "end_of_days", force: :cascade do |t|
    t.date "date"
    t.float "open"
    t.float "high"
    t.float "low"
    t.float "close"
    t.integer "volume"
    t.float "dividend"
    t.float "split"
    t.integer "ticker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ticker_id"], name: "index_end_of_days_on_ticker_id"
  end

  create_table "income_statements", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "overviews", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statement_data", force: :cascade do |t|
    t.date "date"
    t.integer "year"
    t.integer "quarter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statements", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tickers", force: :cascade do |t|
    t.string "ticker_name"
    t.string "name"
    t.string "description"
    t.date "startDate"
    t.date "endDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "balance_sheets", "datawrappers"
  add_foreign_key "balance_sheets", "statement_data", column: "statement_data_id"
  add_foreign_key "end_of_days", "tickers"
end
