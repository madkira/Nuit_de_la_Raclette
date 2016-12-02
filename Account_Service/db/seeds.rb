# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if !Rails.env.production?
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
end

user = Organisation.create!(login: 'aaa',email: 'a@a.a', password: 'aaaaaa', last_name: 'Nom', first_name: 'Prenom', phone_number: 01234, role: 0)
user = Organisation.create!(login: 'aba',email: 'b@a.a', password: 'aaaaad', last_name: 'Nom', first_name: 'Prenom', phone_number: 01234, role: 0)
