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

ActiveRecord::Schema.define(version: 2023_05_10_215142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.string "body"
    t.string "abtimg"
    t.string "slug"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_abouts_on_slug"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "banners", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.string "bannerimg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.text "body"
    t.string "blogimg"
    t.string "slug"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_blogs_on_slug"
  end

  create_table "boards", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.text "body"
    t.string "boardimg"
    t.string "slug"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_boards_on_slug"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "phone"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.string "body"
    t.string "fimg"
    t.string "slug"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_features_on_slug"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.string "icon"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "headers", force: :cascade do |t|
    t.string "abouts_title"
    t.string "abouts_sub_title"
    t.string "services_title"
    t.string "services_sub_title"
    t.string "boards_title"
    t.string "boards_sub_title"
    t.string "features_title"
    t.string "features_sub_title"
    t.string "feedbacks_title"
    t.string "feedbacks_sub_title"
    t.string "blogs_title"
    t.string "blogs_sub_title"
    t.string "projects_title"
    t.string "projects_sub_title"
    t.string "cta1"
    t.string "cta2"
    t.string "headerimg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "sub_title"
    t.string "icon"
    t.string "sectionimg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.string "body"
    t.string "serviceimg"
    t.string "slug"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_services_on_slug"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "body"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_teams_on_slug"
  end

  create_table "welcomes", force: :cascade do |t|
    t.string "address"
    t.string "logoimg"
    t.string "footer"
    t.string "phone"
    t.string "title"
    t.string "desc"
    t.string "section"
    t.string "twitter"
    t.string "ig"
    t.string "ln"
    t.string "telegram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
