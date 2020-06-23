# frozen_string_literal: true

10.times do |number|
  title = Faker::Book.title
  film = Film.new(
    name: title,
    name_local: "#{title} LOCAL",
    rating: 10 - number,
    year: "200#{number}",
    image: "https://example.com/#{number + 1}",
    description: 'some word ' * (number + 1)
  )
  film.countries.build(name: Faker::Address.country)
  film.genres.build(name: Faker::Book.genre)

  if number.zero?
    film.countries.build(name: Faker::Address.country)
    film.genres.build(name: Faker::Book.genre)
  end

  film.save!
end
