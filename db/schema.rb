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


ActiveRecord::Schema.define(version: 2020_01_15_053023) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "ahoy_messages", force: :cascade do |t|
    t.string "user_type"
    t.bigint "user_id"
    t.text "to"
    t.string "mailer"
    t.text "subject"
    t.datetime "sent_at"
    t.string "token"
    t.datetime "opened_at"
    t.datetime "clicked_at"
    t.index ["token"], name: "index_ahoy_messages_on_token"
    t.index ["user_type", "user_id"], name: "index_ahoy_messages_on_user_type_and_user_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.bigint "user_id"
    t.string "challenge_name"
    t.string "theme"
    t.integer "length_of_challenge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "completed", default: true
    t.boolean "reflection_completed", default: false
    t.datetime "date_complete"
    t.boolean "notification_viewed", default: false
    t.datetime "last_logged"
    t.index ["user_id"], name: "index_challenges_on_user_id"
  end

  create_table "progress_logs", force: :cascade do |t|
    t.integer "metric"
    t.string "metric_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "challenge_id"
    t.index ["challenge_id"], name: "index_progress_logs_on_challenge_id"
  end

  create_table "reflections", force: :cascade do |t|
    t.bigint "challenge_id"
    t.text "reflection"
    t.text "caption"
    t.boolean "permission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_reflections_on_challenge_id"
  end

  create_table "tips_dailies", force: :cascade do |t|
    t.string "tip"
    t.string "info"
    t.string "link"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "state"
    t.string "country"
    t.date "birthday"
    t.string "referral"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "timezone"
    t.text "unlockedChallenges", default: [], array: true
    t.string "notifications", default: "Every other day"
    t.string "unconfirmed_email"
    t.datetime "deleted_at"
    t.text "deactivation_reasons", default: [], array: true
    t.string "notifications_content", default: ["reminders", "check-in", "newsletter"], array: true
    t.string "permissions", default: ["location"], array: true
    t.integer "points", default: 0
    t.integer "level", default: 0
    t.boolean "admin", default: false
    t.string "emails_sent", default: [], array: true
    t.boolean "tutorial_viewed", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
