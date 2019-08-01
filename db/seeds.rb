require 'faker'


Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

City.create(city_name: "Rennes")
City.create(city_name: "Paris")
City.create(city_name: "Toulouse")
City.create(city_name: "Bordeaux")
City.create(city_name: "Marseilles")
City.create(city_name: "Brux")
City.create(city_name: "Nantes")
City.create(city_name: "Dax")
City.create(city_name: "Lyon")
City.create(city_name: "Lille")

10.times do

  dog = Dog.create(name: Faker::Name.first_name, city: City.all.sample)
  dogsitter = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)


end

10.times do
  stroll = Stroll.create(date: Faker::Date.between(from: 2.years.ago, to: Date.today), dog: Dog.all.sample, dogsitter: Dogsitter.all.sample, city: City.all.sample)

end