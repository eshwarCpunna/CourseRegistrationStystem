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

ActiveRecord::Schema.define(version: 2018_09_22_140415) do

  create_table "contains", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "semester_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_contains_on_department_id"
    t.index ["semester_id"], name: "index_contains_on_semester_id"
  end

  create_table "departments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "depname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "electives", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "ename"
    t.string "semid"
    t.integer "ecredits"
    t.bigint "tutor_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_electives_on_department_id"
    t.index ["tutor_id"], name: "index_electives_on_tutor_id"
  end

  create_table "requests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status"
    t.bigint "elective_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["elective_id"], name: "index_requests_on_elective_id"
    t.index ["student_id"], name: "index_requests_on_student_id"
  end

  create_table "semesters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "no_eligibleELectives"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "sname"
    t.string "j_year"
    t.string "email"
    t.string "smobile"
    t.string "semobile"
    t.string "password_digest"
    t.bigint "department_id"
    t.bigint "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_students_on_department_id"
    t.index ["semester_id"], name: "index_students_on_semester_id"
  end

  create_table "tutors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tname"
    t.string "tdesg"
    t.string "password_digest"
    t.string "temail"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_tutors_on_department_id"
  end

  add_foreign_key "contains", "departments"
  add_foreign_key "contains", "semesters"
  add_foreign_key "electives", "departments"
  add_foreign_key "electives", "tutors"
  add_foreign_key "requests", "electives"
  add_foreign_key "requests", "students"
  add_foreign_key "students", "departments"
  add_foreign_key "students", "semesters"
  add_foreign_key "tutors", "departments"
end
