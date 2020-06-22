# frozen_string_literal: true

class Film < ApplicationRecord
  has_many :film_genres,    dependent: :destroy
  has_many :film_countries, dependent: :destroy
  has_many :genres,    through: :film_genres,    inverse_of: :films
  has_many :countries, through: :film_countries, inverse_of: :films

  accepts_nested_attributes_for :genres
  accepts_nested_attributes_for :countries

  validates :name, :name_local, :countries, :genres, presence: true
  validates :image, url: true, allow_blank: true
  #todo validates :description # The contents of the audit must be agreed with the customer
  validates :year, length: { is: 4 }
  validates :rating, inclusion: { in: (0..10) }
  validates :rating, :year, numericality: { only_integer: true }
end
