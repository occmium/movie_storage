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

  before_save :set_countries
  before_save :set_genres

  private

  def set_countries
    self.countries = countries.select(&:new_record?).map { |country| Country.find_or_initialize_by(name: country.name) }.uniq
  end

  def set_genres
    self.genres = genres.select(&:new_record?).map { |genre| Genre.find_or_initialize_by(name: genre.name) }.uniq
  end
end
