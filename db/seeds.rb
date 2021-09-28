# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

    user1 = User.create!(
        {first_name: 'Sydney', last_name: 'Chase', user_name: 'Indi', email: 'theindigoroom2@gmail.com'}
        )
    user2 = User.create!(
        {first_name: 'Jennifer', last_name: 'Johnson', user_name: 'JenJohn', email: 'jenjon@emailexample.com'}
        )
    user3 = User.create!(
        {first_name: 'Bob', last_name: 'Daily', user_name: 'Beeto', email: 'beeto@emailexample.com'}
        )
    user4 = User.create!(
        {first_name: 'Yvonne', last_name: 'Gist', user_name: 'Vonnie', email: 'vonie@emailexample.com'}
        )




puts "User & Et all seeded"

puts "Seeded"