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

ActiveRecord::Schema.define(version: 20180104020147) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tour_id"
    t.integer "number_customer"
    t.datetime "departure_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer "plan_id"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pays", force: :cascade do |t|
    t.integer "user_id"
    t.integer "booking_id"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "tour_id"
    t.string "plan_des"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tour_id"
    t.float "rate"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sevice_attaches", force: :cascade do |t|
    t.integer "tour_id"
    t.boolean "is_insurrance"
    t.string "ct_insurrance"
    t.boolean "is_meal"
    t.boolean "ct_meal"
    t.boolean "is_tour_guide"
    t.string "ct_tour_guide"
    t.boolean "is_entrance_tickets"
    t.string "ct_entrance_tickets"
    t.boolean "is_shuttle_car"
    t.string "ct_shuttle_car"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stipulates", force: :cascade do |t|
    t.integer "tour_id"
    t.string "note"
    t.string "cancel_tour"
    t.string "change_tour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tours", force: :cascade do |t|
    t.integer "user_id"
    t.string "tour_name"
    t.string "destination"
    t.integer "number_day"
    t.integer "number_night"
    t.string "pick_up"
    t.integer "price"
    t.string "image"
    t.float "rate_avg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "sex"
    t.string "password_digest"
    t.string "phone"
    t.string "address"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.boolean "business"
  end

end
