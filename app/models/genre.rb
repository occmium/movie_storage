# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :film_genres
  has_many :films, through: :film_genres, inverse_of: :genres

  validates :name, presence: true
end
