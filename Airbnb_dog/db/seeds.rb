5.times do
	c = City.create(city_name: Faker::TvShows::GameOfThrones.city)
end
	puts '10 cities added'

10.times do
	d = Dog.create(name: Faker::Movies::StarWars.character, city: City.all.sample)
	puts "Toutou #{d.name} added"
end

10.times do
	ds = Dogsitter.create(name: Faker::Movies::HarryPotter.character, city: City.all.sample)
	puts "Promeneur de toutou #{ds.name}"
end

# On cree des stroll qui ont un dogsitter
20.times do
	stroll = Stroll.create(dogsitter: Dogsitter.all.sample)
	end
