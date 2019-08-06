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

ActiveRecord::Schema.define(version: 20190806013729) do

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.integer  "course_id"
    t.text     "link"
    t.boolean  "final_exam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "quiz_type"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "answer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "material_id"
    t.integer  "suborder"
    t.text     "select1"
    t.text     "select2"
    t.text     "select3"
    t.text     "answer_text"
  end

  create_table "user_materials", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "material_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["material_id"], name: "index_user_materials_on_material_id"
    t.index ["user_id"], name: "index_user_materials_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "role"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
