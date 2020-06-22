# frozen_string_literal: true

class FilmSerializer < ApplicationSerializer
  attributes :id, :name, :name_local, :rating, :year, :image, :description

  attribute :countries do |record|
    MinimalStringSerializer.new(record.countries).call
  end

  attribute :genres do |record|
    MinimalStringSerializer.new(record.genres).call
  end
end
