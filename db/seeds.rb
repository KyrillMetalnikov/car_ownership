# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

person1 = Person.create({ first_name: "John", last_name: "Doe", email: "JohnDoe@gmail.com"})
person2 = Person.create({ first_name: "Jane", last_name: "Smith", email: "JaneSmith@hotmail.com"})


person1.cars.create({ year: 2012, make: "Toyota", model: "Corolla", price: 15000})
person1.cars.create({ year: 2018, make: "Porsche", model: "911", price: 50000})
person2.cars.create({ year: 2015, make: "Honda", model: "Civic", price: 18000})