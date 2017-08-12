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

ActiveRecord::Schema.define(version: 20161215033631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cheques", force: :cascade do |t|
    t.integer  "Cheque_no"
    t.string   "Bank_name"
    t.date     "ch_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "Course_Name"
    t.string   "Course_Duration"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "dep_name"
    t.string   "dep_location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.integer  "Dis_Amount"
    t.string   "Referenced_by"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "ins_name"
    t.string   "f_name"
    t.string   "cell"
    t.string   "Email"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_instructors_on_department_id", using: :btree
  end

  create_table "paymentts", force: :cascade do |t|
    t.integer  "Amount"
    t.integer  "discount_id"
    t.integer  "cheque_id"
    t.integer  "Total_fee"
    t.integer  "Remaining_fee"
    t.date     "pay_date"
    t.integer  "studentt_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["cheque_id"], name: "index_paymentts_on_cheque_id", using: :btree
    t.index ["discount_id"], name: "index_paymentts_on_discount_id", using: :btree
    t.index ["studentt_id"], name: "index_paymentts_on_studentt_id", using: :btree
  end

  create_table "sessions", force: :cascade do |t|
    t.date     "Sess_Starting"
    t.date     "Sess_ending"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.date     "sess_ending"
  end

  create_table "stu_has_deps", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "studentt_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_stu_has_deps_on_department_id", using: :btree
    t.index ["studentt_id"], name: "index_stu_has_deps_on_studentt_id", using: :btree
  end

  create_table "studentts", force: :cascade do |t|
    t.string   "st_name"
    t.string   "F_name"
    t.string   "Address"
    t.string   "Gender"
    t.string   "Cell"
    t.string   "Local_domicail"
    t.string   "Nationality"
    t.string   "CNIC"
    t.integer  "session_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["session_id"], name: "index_studentts_on_session_id", using: :btree
  end

  create_table "takes", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "studentt_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["course_id"], name: "index_takes_on_course_id", using: :btree
    t.index ["studentt_id"], name: "index_takes_on_studentt_id", using: :btree
  end

  create_table "teaches", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["course_id"], name: "index_teaches_on_course_id", using: :btree
    t.index ["instructor_id"], name: "index_teaches_on_instructor_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "instructors", "departments"
  add_foreign_key "paymentts", "cheques"
  add_foreign_key "paymentts", "discounts"
  add_foreign_key "paymentts", "studentts"
  add_foreign_key "stu_has_deps", "departments"
  add_foreign_key "stu_has_deps", "studentts"
  add_foreign_key "studentts", "sessions"
  add_foreign_key "takes", "courses"
  add_foreign_key "takes", "studentts"
  add_foreign_key "teaches", "courses"
  add_foreign_key "teaches", "instructors"
end
