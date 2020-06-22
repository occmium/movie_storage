# frozen_string_literal: true

class FilmSerializer < ApplicationSerializer
  attributes :id, :name, :name_local, :rating, :year, :image, :description
end
