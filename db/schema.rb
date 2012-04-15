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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120415182205) do

  create_table "cases", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dicom_file_name"
  end

  create_table "examinations", :force => true do |t|
    t.string   "study"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dicom_file_file_name"
    t.string   "dicom_file_content_type"
    t.integer  "dicom_file_file_size"
    t.datetime "dicom_file_updated_at"
  end

  create_table "studies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dicom_file"
    t.string   "status"
    t.string   "study_date"
  end

end
