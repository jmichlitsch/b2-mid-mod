# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@mechanic1 = Mechanic.create!(
  name: "Bob",
  years_experience: 10)
@mechanic2 = Mechanic.create!(
  name: "John",
  years_experience: 3
)
@mechanic3 = Mechanic.create!(
  name: "Tim",
  years_experience: 4)

@ride1 = Ride.create!(
  name: "Awesome Ride",
  thrill_rating: 10,
  open: true
)

@ride2 = Ride.create!(
  name: "Boring Ride",
  thrill_rating: 1,
  open: true
)
@ride3 = Ride.create!(
  name: "Ride Ride",
  thrill_rating: 5,
  open: true
)
@ride4 = Ride.create!(
  name: "Closed Ride",
  thrill_rating: 10,
  open: false
)
@mechanic1.rides << [@ride1, @ride2, @ride3, @ride4]
