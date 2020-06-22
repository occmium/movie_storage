# frozen_string_literal: true

class CreateFilmGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :film_genres do |t|
      t.references :film, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
