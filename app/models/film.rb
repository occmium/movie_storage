# frozen_string_literal: true

class Film < ApplicationRecord
  validates :name, :name_local, presence: true
  validates :image, url: true, allow_blank: true
  validates :year, length: { is: 4 }
  validates :rating, inclusion: { in: (0..10) }
  validates :rating, :year, numericality: { only_integer: true }
end
