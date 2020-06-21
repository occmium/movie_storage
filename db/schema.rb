# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_621_171_708) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'films', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'name_local', null: false
    t.integer 'rating', default: 0, null: false
    t.integer 'year', null: false
    t.text 'image'
    t.text 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['name'], name: 'index_films_on_name'
    t.index ['name_local'], name: 'index_films_on_name_local'
    t.index ['rating'], name: 'index_films_on_rating'
    t.index ['year'], name: 'index_films_on_year'
  end
end
