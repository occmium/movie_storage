# frozen_string_literal: true

10.times do |number|
  film = Film.new(
    name: "Name_#{number + 1}",
    name_local: "Name_local_#{number + 1}",
    rating: 10 - number,
    year: "200#{number}",
    image: "https://example.com/#{number + 1}",
    description: 'some word ' * (number + 1)
  )
  film.countries.build(name: "Country_#{number + 1}")
  film.genres.build(name: "Genre_#{number + 1}")

  if number == 0
    film.countries.build(name: "Country_#{number + 10}")
    film.genres.build(name: "Genre_#{number + 10}")
  end

  film.save!
end
