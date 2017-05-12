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

ActiveRecord::Schema.define(version: 20170512150202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "weight"
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapters_questions", force: :cascade do |t|
    t.integer "chapter_id"
    t.integer "question_id"
    t.integer "weight"
  end

  create_table "question_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "header"
    t.json     "possible_answers"
    t.json     "correct_answer"
    t.json     "explanation"
    t.integer  "question_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "reading_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "readings", force: :cascade do |t|
    t.integer  "reading_type_id"
    t.string   "header"
    t.text     "body"
    t.integer  "subject_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "token"
    t.string   "mobile_version"
    t.string   "backend_version"
    t.json     "menu_items"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
