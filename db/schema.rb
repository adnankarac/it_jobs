# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141107132036) do

  create_table "answers", force: true do |t|
    t.string   "description"
    t.boolean  "correct"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "name"
    t.integer  "size"
    t.string   "website"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_application_statuses", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_applications", force: true do |t|
    t.date     "date"
    t.integer  "jobApplicationStatus_id"
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "job_applications", ["jobApplicationStatus_id"], name: "index_job_applications_on_jobApplicationStatus_id", using: :btree
  add_index "job_applications", ["job_id"], name: "index_job_applications_on_job_id", using: :btree
  add_index "job_applications", ["user_id"], name: "index_job_applications_on_user_id", using: :btree

  create_table "jobs", force: true do |t|
    t.integer  "status"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id", using: :btree

  create_table "previous_employments", force: true do |t|
    t.date     "from"
    t.date     "to"
    t.string   "title"
    t.string   "description"
    t.string   "companyName"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "qualifications", force: true do |t|
    t.date     "from"
    t.date     "to"
    t.string   "description"
    t.string   "faculty"
    t.string   "university"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qualifications", ["user_id"], name: "index_qualifications_on_user_id", using: :btree

  create_table "questions", force: true do |t|
    t.string   "question"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["test_id"], name: "index_questions_on_test_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags_tests", force: true do |t|
    t.integer  "tag_id"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags_tests", ["tag_id"], name: "index_tags_tests_on_tag_id", using: :btree
  add_index "tags_tests", ["test_id"], name: "index_tags_tests_on_test_id", using: :btree

  create_table "test_topics", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_topics_tests", force: true do |t|
    t.integer  "test_id"
    t.integer  "testTopic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_topics_tests", ["testTopic_id"], name: "index_test_topics_tests_on_testTopic_id", using: :btree
  add_index "test_topics_tests", ["test_id"], name: "index_test_topics_tests_on_test_id", using: :btree

  create_table "tests", force: true do |t|
    t.string   "description"
    t.integer  "max"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tests", ["company_id"], name: "index_tests_on_company_id", using: :btree

  create_table "tests_results", force: true do |t|
    t.integer  "points"
    t.integer  "test_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tests_results", ["test_id"], name: "index_tests_results_on_test_id", using: :btree
  add_index "tests_results", ["user_id"], name: "index_tests_results_on_user_id", using: :btree

  create_table "user_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "firstName"
    t.string   "lastName"
    t.date     "dateOfBirth"
    t.integer  "userType_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["userType_id"], name: "index_users_on_userType_id", using: :btree

end
