# frozen_string_literal: true

class Country < ApplicationRecord
  has_many :film_countries
  has_many :films, through: :film_countries, inverse_of: :countries

  validates :name, presence: true
end
