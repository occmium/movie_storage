# frozen_string_literal: true

class AddPgTrgmExtension < ActiveRecord::Migration[6.0]
  def change
    execute 'create extension pg_trgm;'
  end
end
