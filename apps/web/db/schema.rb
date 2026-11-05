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

ActiveRecord::Schema[8.1].define(version: 2026_11_05_090000) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "audit_entries", force: :cascade do |t|
    t.datetime "occurred_at", null: false
    t.bigint "actor_id"
    t.string "actor_role", null: false
    t.string "actor_label", null: false
    t.string "subject_type", null: false
    t.bigint "subject_id", null: false
    t.string "subject_label", null: false
    t.string "action", null: false
    t.string "from_state"
    t.string "to_state"
    t.text "note"
    t.jsonb "details", default: {}, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_audit_entries_on_actor_id"
    t.index ["occurred_at"], name: "index_audit_entries_on_occurred_at"
    t.index ["subject_type", "subject_id"], name: "index_audit_entries_on_subject_type_and_subject_id"
  end

  create_table "event_reviews", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "decided_by_id", null: false
    t.string "outcome", null: false
    t.text "note", null: false
    t.jsonb "completeness_snapshot", default: {}, null: false
    t.datetime "decided_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["decided_by_id"], name: "index_event_reviews_on_decided_by_id"
    t.index ["event_id"], name: "index_event_reviews_on_event_id"
    t.check_constraint "outcome::text = ANY (ARRAY['released'::character varying::text, 'rejected'::character varying::text, 'returned'::character varying::text])", name: "event_reviews_outcome_valid"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "provider_id", null: false
    t.string "title"
    t.text "short_description"
    t.string "category"
    t.date "event_date"
    t.time "start_time"
    t.time "end_time"
    t.string "venue_name"
    t.string "full_address"
    t.string "city_region"
    t.decimal "price_chf", precision: 8, scale: 2
    t.string "payment_method"
    t.integer "min_participants"
    t.integer "max_participants"
    t.datetime "booking_deadline_at"
    t.string "cancellation_model"
    t.datetime "decision_point_at"
    t.string "language"
    t.text "contact_option"
    t.text "accessibility_info"
    t.boolean "alone_welcome"
    t.string "activity_level"
    t.boolean "activity_level_relevant", default: false, null: false
    t.text "required_equipment"
    t.boolean "required_equipment_relevant", default: false, null: false
    t.text "catering_info"
    t.boolean "catering_relevant", default: false, null: false
    t.string "age_focus"
    t.boolean "age_focus_relevant", default: false, null: false
    t.boolean "external_booking_marker", default: false, null: false
    t.text "qualification_evidence"
    t.boolean "qualification_evidence_relevant", default: false, null: false
    t.text "public_transport_info"
    t.text "parking_info"
    t.text "event_image_note"
    t.string "status", default: "draft", null: false
    t.integer "synthetic_booked_count", default: 0, null: false
    t.boolean "synthetic", default: true, null: false
    t.datetime "released_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_region"], name: "index_events_on_city_region"
    t.index ["event_date"], name: "index_events_on_event_date"
    t.index ["provider_id"], name: "index_events_on_provider_id"
    t.index ["status"], name: "index_events_on_status"
    t.check_constraint "activity_level IS NULL OR (activity_level::text = ANY (ARRAY['low'::character varying::text, 'moderate'::character varying::text, 'high'::character varying::text]))", name: "events_activity_level_valid"
    t.check_constraint "cancellation_model IS NULL OR (cancellation_model::text = ANY (ARRAY['flexible'::character varying::text, 'standard'::character varying::text, 'fixed'::character varying::text]))", name: "events_cancellation_model_valid"
    t.check_constraint "external_booking_marker = false", name: "events_external_booking_inactive"
    t.check_constraint "payment_method IS NULL OR (payment_method::text = ANY (ARRAY['online'::character varying::text, 'on_site'::character varying::text]))", name: "events_payment_method_valid"
    t.check_constraint "status::text = ANY (ARRAY['draft'::character varying::text, 'in_review'::character varying::text, 'returned_for_revision'::character varying::text, 'rejected'::character varying::text, 'released'::character varying::text])", name: "events_status_valid"
    t.check_constraint "synthetic = true", name: "events_synthetic_only"
    t.check_constraint "synthetic_booked_count >= 0", name: "events_synthetic_booked_count_non_negative"
  end

  create_table "internal_users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "role", null: false
    t.string "display_name", null: false
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_internal_users_on_email", unique: true
    t.index ["provider_id"], name: "index_internal_users_on_provider_id"
    t.check_constraint "role::text = 'curation'::text AND provider_id IS NULL OR role::text = 'provider'::text AND provider_id IS NOT NULL", name: "internal_users_role_provider_consistent"
    t.check_constraint "role::text = ANY (ARRAY['provider'::character varying::text, 'curation'::character varying::text])", name: "internal_users_role_valid"
  end

  create_table "provider_reviews", force: :cascade do |t|
    t.bigint "provider_id", null: false
    t.bigint "decided_by_id", null: false
    t.string "outcome", null: false
    t.boolean "register_check", default: false, null: false
    t.boolean "identity_check", default: false, null: false
    t.boolean "bank_account_check", default: false, null: false
    t.boolean "qualification_check", default: false, null: false
    t.text "note", null: false
    t.datetime "decided_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["decided_by_id"], name: "index_provider_reviews_on_decided_by_id"
    t.index ["provider_id"], name: "index_provider_reviews_on_provider_id"
    t.check_constraint "outcome::text = ANY (ARRAY['verified'::character varying::text, 'rejected'::character varying::text])", name: "provider_reviews_outcome_valid"
  end

  create_table "providers", force: :cascade do |t|
    t.string "organisation_name", null: false
    t.string "provider_type", null: false
    t.string "contact_person_name", null: false
    t.string "contact_email", null: false
    t.string "contact_phone", null: false
    t.string "business_address", null: false
    t.string "business_postal_code", null: false
    t.string "business_city", null: false
    t.string "status", default: "registered", null: false
    t.boolean "synthetic", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.check_constraint "provider_type::text = ANY (ARRAY['commercial'::character varying::text, 'institutional'::character varying::text, 'nonprofit'::character varying::text])", name: "providers_type_valid"
    t.check_constraint "status::text = ANY (ARRAY['registered'::character varying::text, 'in_review'::character varying::text, 'verified_active'::character varying::text, 'rejected'::character varying::text, 'suspended'::character varying::text])", name: "providers_status_valid"
    t.check_constraint "synthetic = true", name: "providers_synthetic_only"
  end

  add_foreign_key "audit_entries", "internal_users", column: "actor_id"
  add_foreign_key "event_reviews", "events"
  add_foreign_key "event_reviews", "internal_users", column: "decided_by_id"
  add_foreign_key "events", "providers"
  add_foreign_key "internal_users", "providers"
  add_foreign_key "provider_reviews", "internal_users", column: "decided_by_id"
  add_foreign_key "provider_reviews", "providers"
end
