# frozen_string_literal: true

class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string  :name,       null: false
      t.string  :name_local, null: false
      t.integer :rating,     null: false, default: 0
      t.integer :year,       null: false
      t.text    :image
      t.text    :description

      t.timestamps
    end
    add_index :films, :name
    add_index :films, :name_local
    add_index :films, :rating
    add_index :films, :year
  end
end
